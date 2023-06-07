public class ShipmentDriverHandler {
    public static void validateShipmentDriver(list<Shipment_Driver__c> shpDriver) {
        set<id> shipmentIds = new Set<id>();
        set<id> driverIds = new set<id>();
        map<string, Shipment_Driver__c> shipmentDriverMap = new map<string,Shipment_Driver__c> ();
       
        for(Shipment_Driver__c es : shpDriver){
        driverIds.add(es.Driver__c);
        shipmentIds.add(es.Shipment__c);

        string myKey =es.Driver__c + es.Shipment__c;
        shipmentDriverMap.put(myKey, es);
       }
     System.debug('driverIds ' + driverIds);
     System.debug('shipmentIds ' + shipmentIds);

     for(Shipment_Driver__c es : [SELECT id,Driver__c, Shipment__c 
                                    FROM Shipment_Driver__c 
                                    WHERE Driver__c IN:driverIds 
                                    AND Shipment__c IN :shipmentIds  ])
                                    {
     string systemKey = es.Driver__c + es.Shipment__c;
        Shipment_Driver__c toBeFailed = shipmentDriverMap.get(systemKey);
        if(toBeFailed !=null){
        toBeFailed.addError('This is a duplicate record');
     }

     }
    }
}