trigger AccountTrigger2 on Account(before update) {
    if(trigger.isBefore){
 system.debug('before update account trigger');
}
 if(trigger.isAfter){
 system.debug('after update account trigger');

 }
}