trigger DepartmentTrigger on SOBJECT (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        DepartmentTriggerHandler.createDefaultEmpFuture(trigger.newMap.keySet());
    }
}