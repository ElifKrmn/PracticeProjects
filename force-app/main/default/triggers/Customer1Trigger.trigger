trigger Customer1Trigger on Customer1__c (before insert, before update, after insert, after update, before delete, after delete, after undelete) {
if(Trigger.isAfter && Trigger.isInsert){
    Customer1TriggerHandler.CreateCustomer(trigger.new);
}
if(Trigger.isBefore&&Trigger.isDelete){
    Customer1TriggerHandler.deleteCustomer(Trigger.old);
}
}