public with sharing class DummyDataCreation {
    public static list<opportunity> createRecords(integer n,id accId){
        list<opportunity> oppList2= new list<opportunity>();
        if(n<=0){
            system.debug('Please tell us how many opportunities needs to be created');
        }else{
            account acc = [select id, name,AnnualRevenue from account where id=:accid limit 1];
        for(integer i=0 ; i<n ; i++){
            opportunity op = new opportunity();
        op.name=acc.name;
          op.closeDate=date.today().addYears(3);
          op.StageName='Prospecting';
        op.amount=acc.AnnualRevenue/n;
        op.accountId=acc.Id;
        oppList2.add(op);
        
        }
        insert oppList2;
        }
        
        return oppList2;
            }
          public static void deleteop(){
            list<Opportunity> listOpp 
          }  
        }

