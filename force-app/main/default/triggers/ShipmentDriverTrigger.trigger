trigger ShipmentDriverTrigger on ShipmentDriver (before insert, before update) {
    if(trigger.isBefore){
        if(trigger.isinsert || Trigger.isupdate){
            ShipmentDriverHandler.validateShipmentDriver(Trigger.new);
            
        }

    }else if(){

    }
}