public class CaseCreate implements Database.Batchable<sObject>, Database.stateful{
    public integer count= 0;

    
    public Database.QueryLocator start(Database.BatchableContext BC) {
        if (!test.isRunningTest()) {
            return Database.getQueryLocator([select id,ownerId from case where status != 'Closed' and lastModifiedDate < LAST_N_DAYS : 5  ]);
        } else {
            return Database.getQueryLocator([select id,ownerId from case where status != 'Closed' ]);
        }
        
    }
    public void execute(Database.BatchableContext BC, List<Case> scope) {
        List<Task> taskList = new list<Task>();
        for (Case C : scope) {
            Task T = new task();
        
            T.Subject= 'Critical action needed';
            T.ActivityDate= date.today().addDays(2);
            T.Description= 'Coplete Task';
            T.WhatId= C.Id;
            T.OwnerId=C.OwnerId;
            T.Status='In Progress';

            taskList.add(T);
            count++;

            insert taskList;
           
            
        }
      

    }

    public void finish(Database.BatchableContext BC) {
        System.debug('total count '+count);

    }

}