public class EmployeeTriggerHandler {
    //why handler?
        //to create methods and call it from trigger.
        //to have more clean trigger
        //easy to maintain
        //reuse functionality

    public static void updateJoinDate(List<Employee__c> empTriggerNew) {
        for (Employee__c newEmp : empTriggerNew) {
            if (newEmp.joinDate__c == null) {
                newEmp.JoinDate__c = date.today();
            }
        }
    }

    public static void validateJoinDate(List<employee__c> empTriggerNew) {
        for (Employee__c newEmp : empTriggerNew) {
            //check if joindate is in future
            if(newEmp.JoinDate__c > date.today()){
                newEmp.joinDate__c.addError('Join date cannot be in Future. Alright?');
            }
        }
    }
    

        if (Trigger.isBefore) {
            //validate the data, DO NOT ALLOW user to enter FUTURE joining date.
            //call handler method to validate.
            EmployeeTriggerHandler.validateJoinDate(Trigger.New);
    
            //call handler here.
            EmployeeTriggerHandler.updateJoinDate(trigger.new);
        }
    }

