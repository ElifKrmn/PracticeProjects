public class CaseTriggerHandler {
    public static void createCase(list<case> newTrigger){
        list<case> caseList =new list<case>();
        for(case eachCase :newTrigger){
            if (eachCase.description.contains('password')) {
                Case c= new Case();
                c.Subject ='Parent case must contain ';
                c.parentId =eachCase.Id;
                c.priority='high';
                c.Description = 'secret info not allowed in case';
                caseList.add(c);
            }
        }
        insert caseList ;
    }
 
}

    
