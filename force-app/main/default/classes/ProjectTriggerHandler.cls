
public  class ProjectTriggerHandler {
    @future
    public static void updateProject(set<id> ProjectId) {
       /* set<id> projectId = new set<id> ();
        Decimal totalTime = 0;
        list<task1__c> taskList = [SELECT id, project__c, (SELECT timeLog__c FROM TimeLogs__r )FROM task1__c WHERE id IN :taskId];
        if(!taskList.isEmpty()){
            for(task1__c task : taskList){
                projectId.add(task.Project__C);
                for(TimeLog__c t1 : task.TimeLogs__r){
                totalTime +=t1.Time_Logged__c;
                }

            }
        list<Project__c> projectsToUpdate = [SELECT id, Completed_Task1__c,Total_Time_Logged__c, 
                                              (SELECT is FROM Task1__r WHERE Status__c ='Completed')  
                                                FROM Project__c 
                                                WHERE id IN :ProjectId];
    }*/
    }
}