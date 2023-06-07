trigger ContactTrigger on Contact(before insert, after insert, before update, after update){
 //yeni bir contact mevcut bir accounta bagli olarak olusturuldugunda, contact other phone bagli oldugu Account phone olsun
 if(trigger.isBefore && trigger.isUpdate){
    contactTriggerHandler.validate1(trigger.new, trigger.old,trigger.newMap);
 }}