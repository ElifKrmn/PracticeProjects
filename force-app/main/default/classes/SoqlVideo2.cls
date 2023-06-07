public class SoqlVideo2 {
    public static void FetchOpps() {
        List<Opportunity> listOpp =[ SELECT id, name, amount, stageName, Accountid, account.name,account.phone, account.type, account.industry FROM Opportunity WHERE stageName != 'Closed won' and stageName != 'closed Lost]' ];
        system.debug(' list of  opps ' + ListOpp);
        for (opportunity opp : listOpp) {
            System.debug(opp);
            // opp icindeki verilerier ulasmak icin 
            System.debug('opp name is ' + opp.name + 'amount and stage name of opprt is ' + opp.Amount + '& '+ opp.stageName);
            if(opp.AccountId != null){
                system.debug ('bu opp nin bagli oldugu account '+ opp.Account.name + ' '+ opp.Account.phone + ' ' +opp.Account.Industry);

            }else{
                system.System.debug('Bu opp bir accounta bagli degildir');
            }
        }
    }
}