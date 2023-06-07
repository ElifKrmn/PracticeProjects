public class AccountBatch implements Database.Batchable <sObject>{
    public Database.QueryLocator start (Database.BatchableContext bc) {
        system.debug('inside START method');
        return Database.getQueryLocator([SElECT id,  active__c, description from account ]);
    }
    public void execute(Database.BatchableContext bc, list<account> listAcc){
        System.debug()
    }
}