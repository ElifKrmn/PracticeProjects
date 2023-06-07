trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    if(trigger.isBefore){
        LeadTriggerHandler.updateCloseLostDate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
//         for( Lead newL : trigger.new){
//             if(newL.Leadsource=='web'){
//                 system.debug('rating should be Cold');

//             }else{
//                 system.debug('rating should be Hot');

//             }
//             }
//         }
// }
    }
}