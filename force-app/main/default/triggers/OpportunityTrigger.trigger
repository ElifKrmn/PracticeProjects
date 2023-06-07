trigger OpportunityTrigger on Opportunity (before insert, after insert,before update, after update) {
    if(trigger.isAfter && trigger.isInsert){
        System.debug(' total number of opportunity ' +trigger.new.size());
        for( Opportunity newOpp: trigger.new){
            system.debug('total number of Opportunities created in the transaction ' + newopp.Name + ' -- ' + newOpp.CloseDate + '---' + newOpp.Amount);
           
            /* 6. soru: When opportunity is created print the StageName, value of description field and
            opportunity name.*/
            system.debug(newOpp.stageName + '==' + newOpp.description + '=='+ newOpp.Name);
        
        }
    }

}
