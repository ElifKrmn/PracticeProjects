public  class Payment1TriggerHandler {
    public static void newTotalAmount(Set<Id> customerId ){
     list<Customer1__c> newCus =[SELECT id, total_amount__c,(SELECT id, amount__r FROM Payment1__r)FROM Customer__c where id =:customerId];
    if(!newCus.isEmpty()){
        for (customer1__c eachCus : newCus) {
            decimal totalAmount = 0;
            for (payment1__c eachPay : eachCus.Payments__r) {
                totalAmount +=eachPay.Amount__c;
                
            }
            eachCus.total_amount__c=totalAmount;

        }
         update newCus;
    }
    }
    public static void createPayment(list<payment1__c> newTrigger) {
    Set<Id> customerId =new set<Id>();
    for(payment1__c py:newTrigger){
    }

    
    if (!customerId.isEmpty()){
    newTotalAmount(customerId);

 }
}
//update icin
 public static void updatePayment(list<payment1__c> newTrigger, map<id, Payment1__c>oldMapTrigger ){
    set<id>customerId= new Set<Id>();
    for (payment1__c p : newTrigger) {
        payment1__c oldP=oldMapTrigger.get(p.Id);
        if(p.Customer1__c!=oldP.Customer1__c ||p.Amount__c != oldP.Amount__c){
            customerId.add(p.customer1__c);
            customerId.add(oldP.customer1__c);
        }
        
    }

 }
}
