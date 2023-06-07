trigger Payment1Trigger on Payment1__c (before insert, before update, before delete, after insert, after update, after delete, after undelete) {

    if(trigger.isAfter){
        if(trigger.isInsert){
            Payment1TriggerHandler.createPayment(Trigger.new);

        if(Trigger.isUpdate){
            Payment1TriggerHandler.updatePayment(Trigger.new, Trigger.oldMap);
        }

        }
    }
}