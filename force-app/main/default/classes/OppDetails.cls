public class OppDetails {
    public  static void totalAmounts() {
        list<Account> listAcc = [SELECT id, name, (SELECT id,name,amount FROM Opportunities) FROM Account];
        map<id, decimal> accountTotal = new Map<Id,DEcimal>();
        
        for (account eachAcc: listAcc){
        System.debug('for dongusu start');
        System.debug('Account ismi => '+ eachAcc.name); // her account un ismine bu sekilde ulaisilir
        List<Opportunity> listOpp = eachAcc.Opportunities;
        if(! listOpp.isEmpty()){
        decimal total=0;
        for(Opportunity eachOpp : listOpp){
            total += eachOpp.Amount;
        }
        accountTotal.put(eachAcc.id, total);
    }  
    System.debug('for dongusu biter');
   }
   system.debug('Accountlara bagli olan opportunitylerin amount toplamlari Map = '  + accountTotal);
}
}