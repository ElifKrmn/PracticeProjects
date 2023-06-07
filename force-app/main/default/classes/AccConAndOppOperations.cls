public class AccConAndOppOperations{
   public static list<account> allAccounts(){
    list<account> allAccs=[select id, name, annualRevenue, type, accountsource from Account];
    //account[] allAccs=[select id, name, annualRevenue, type, accountsource from Account];

    return allAccs;
   }
   public static void allOpportunities(string leadSource, string stageName ){
    list<Opportunity> allOps = [select id, name, leadsource,stagename from Opportunity where LeadSource =:leadsource  and stagename  =:stageName];
  system.debug(allOps);
   }

   public static void printAccountAndOpp(string acctype, string oppStageName ){
    account[] acc1 = [select id, name, annualrevenue, type, (select name, amount, stagename from Opportunities where stagename = :oppstagename) 
from account where type= :acctype];
   for(account eachAcc :acc1){
    system.debug('Account name is ' +eachAcc);
    for(Opportunity eachOpp : eachAcc.Opportunities){
        system.debug('opportunity name is ' + eachOpp.name + 'Opportunity amount is ' + eachOpp.Amount);
        system.debug('--------------');
    }
   }

   }
   
   public static decimal sumOfOpps(){
    List<Opportunity> oppList = [SELECT id,name, amount from Opportunity where stageName='Closed Won' and amount!= null];
    decimal sum= 0;
    for (Opportunity eachOpp : OppList) {
        sum += eachOpp.Amount;

    
    }
    system.debug('Sum of Opportunities ' + sum);
    return sum;
}
public static list<account> ClosedOpps(string stageName1){
    list<account> ClosedList = [SELECT id,name from account where id in (SELECT accountid from Opportunity where stageName= :stageName1) ];
    system.debug('Closed list is ---> ' + ClosedList);
    return ClosedList;

}
