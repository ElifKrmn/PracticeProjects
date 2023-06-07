public class AccountTriggerHandler3 {
    public static void contactList (list<Account> newAccount, list<Account> oldAccount, map<id, Account> newAccMap, Map<Id, Account> oldAccMap){
        list<contact> newContacts = new list<contact>();
        for (Account acc: newAccount){
            contact newC = new Contact ();
            newC.lastName = acc.Name;
            newC.Phone =acc.Phone;
            newC.AccountId = acc.Id;
            newContacts.add(newC);
        }
    if (!newContacts.isEmpty()){
        insert newContacts;
    }
    }

    public static void checOpp(list<Account> newAccount, list<Account> oldAccount, map<id, Account> newAccMap, Map<Id, Account> oldAccMap){
        set<id> UpdateOpp =new set<id>();
        for(account acc: newAccount){
        updateOpp.add(acc.Id);

        }
        list<Opportunity> oppList = [SElect id, stageName from Oppotunity where AccountId =:UpdateOpp and stageName !='Closed won' and stageName !='Close Lost'];
        for(Opportunity Opp: oppList){
            opp.StageName='closed Lost';

        }
        update oppList;
    }



    
    }
