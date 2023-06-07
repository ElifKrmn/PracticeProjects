public class Customer1TriggerHandler {
    public  static void CreateCustomer(list<Customer1__c> newTrigger) {
        list<Payment1__c> PaymentLIst = new list<Payment1__c>();
        
        for(Customer1__c eachCustom : newTrigger){
        
            Payment1__c newPayment1 =new Payment1__c();
            newPayment1.Amount__c =0.1;
            newPayment1.Mode__c= 'online';
            newPayment1.Customer1__c =eachCustom.id;
            PaymentLIst.add(newPayment1);

            Payment1__c newPayment2 =new Payment1__c();
            newPayment2.Amount__c =0.1;
            newPayment2.Mode__c= 'Crypto';
            newPayment2.Customer1__c =eachCustom.id;
            PaymentLIst.add(newPayment2);
        
        }
        if(!PaymentLIst.isEmpty()){
            insert PaymentLIst;
        }
    }

    public static void deleteCustomer( List<Customer1__c> oldTrigger){
        set<id>activeSet = new Set<id>();
        set<id>inActiveSet =new set<id>();
        for(customer1__c eachCus: oldTrigger){
            if(eachCus.Active__c== true){
                activeSet.add(eachCus.id);

            }else{
                inActiveSet.add(eachCus.id);
            }
        }
        if(!activeSet.isEmpty()){
            list<Payment1__c> payment1 =[select id from payment1__c where customer1__c in :activeSet];// tek degerde in kullan
        If(!payment1.isEmpty()){
            delete payment1;
        }
        }


        if(!activeSet.isEmpty()){
            list<Payment1__c> payment2 =[select id from payment1__c where customer1__c in :activeSet];// tek degerde in kullan
        If(!payment2.isEmpty()){
            delete payment2;
        }
        }



    }
}