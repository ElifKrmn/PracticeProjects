public  class LeadTriggerHandler {
    public static void updateCloseLostDate(List<lead> lTriggerNew, list<lead> lTriggerOld, map<id,lead> lTriggerNewMap, map<id,lead> lTriggerOldMap) {
        if(lTriggerOld==null){  // eger trigger old null ise o zaman insert demektir
            for(Lead eachLead : lTriggerNew){
                if(eachLead.Status == 'Closed - Not Converted'){ // if this is the case we want to  update etmek istiyoruz closed lost date i
                    eachLead.Closed_lost_Date__c= Datetime.now();
                }
            }
        }
    if(ltriggerOld != null){ // trigger olnot null ise o zaman update, o zaman stage name i old and new valuer kontrol et, stage name update edildi mi, degisti mi, bir de not converted yapildi mi, o zaman close date populated olmali, yoksa gerek yok
        for(Lead eachLead : lTriggerNew){
            if(lTriggerOldMap.get(eachLead.id).Status == eachLead.Status&& eachLead.Status == 'Closed - Not Converted'){ // old and new valu compare
                // if this is the case we want to  update etmek istiyoruz closed lost date i
                eachLead.Closed_lost_Date__c= Datetime.now();
            }
        }
        
    }
    }
}