public  class SalesforceTicketHandler {
    public  static void updStatus(list<salesforce_Ticket__c> stTrgggerNew, Map<id, Salesforce_Ticket__C> stTriggerOldMap)  {
        //1. etkilenen salesforce project recordlarina ait id leri bir set yapida toplayalim 

        set<id> sfPIds =new set<id>();
        for (salesforce_Ticket__c st: stTriggerNew) {
            if(st.status__c== 'completed'&& stTriggerOldMap.get(st.id).status__c!=st.status__c){
                sfPIds.add(st.salesforce_project__C);
                
            }
        }
        // bu id lere ait  tum salesforce project recordlarini tum bagli tcketlar ile beraber soql ile listeleyelim 

        list<Salesforce_Project__c> spList =[SELECT id, status__c, (SELECT id, status__c  FROM salesforce_Tickets__r WHERE status__c !=' completed') from Salesforce_Project__c WHERE id IN :sfPIds];

        //salesforce project rec larini bir for dongiusune alcaz, her bir rec un ticketlarini kontrol edicez. ,completes olmayan record varsa bunun statusunu 'completed yapicaz'
   for( Salesforce_project__c sp : spList){
    
   }
    }
}