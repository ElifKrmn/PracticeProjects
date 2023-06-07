trigger CaseTrigger on Case (before insert, after insert,before update, after update){
if(Trigger.isAfter && trigger.isInsert){
    CaseTriggerHandler.createCase(trigger.new);
}
}
   