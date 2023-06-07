public class contactTriggerHandler {
    public static void updateContact(list<contact> newTrigger, map<id, contact> oldMap) {
    set<id> accId =new set<Id>();
    for (contact con : newTrigger){
        contact oldcon = oldMap.get(con.Id);
        
        if (con.Main_Contact_Person__c != oldCon.Main_Contact_Person__c){
            accId.add(con.AccountId);
        }
    }
    list<account> accconList = [SELECT id, fax, ( SELECT fax FROM Contacts WHERE Main_Contact_Person__c = True limit 1)from Account WHERE Id =: accId];
    for(Account acc : accConList){
        acc.fax = acc.Contacts[0].fax;
    }   
    update accconList;
}}
