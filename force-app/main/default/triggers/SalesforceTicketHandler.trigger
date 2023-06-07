trigger SalesforceTicketTrigger on SalesforceTicketTrigger (before insert, after insert, before update, after update) {

    if(trigger.isAfter&&trigger.isUpdate){
        SalesforceTicketHandler.updStatus(trigger.new, trigger.oldMap);
    }

}