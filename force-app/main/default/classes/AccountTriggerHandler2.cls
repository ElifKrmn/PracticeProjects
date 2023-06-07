public  class AccountTriggerHandler2 {
    public  static void updateAccountRating( list<Account> newAccount, list<Account> oldAccount, map<id, Account> newAccMap, Map<Id, Account> oldAccMap  ) {
    set<id> accID =new set<id>();
    for(Account eachAcc : newAccount){ // 1. asama: degisiklilik olan recordlarin idsini sete atmak
        if(eachAcc.Rating == 'Hot'){
            accID.add(eachAcc.id);
        }
    }     
     
     list<Account> accList =[Select id, Name, Rating,( Select id from Opportunities where isClosed != False) From Account WHERE id in: accID]; // rating i hot olan Accountlarin closed lost olan opportunutileri topladik

    for(Account Acc : accList){
    if(acc.Opportunities.size()<3){
        newAccMap.get(acc.id).addError('This account connot be hot. Okay?');
        // newAccMap.get(acc.id).addError('this account Cannot be Hot')
    }
    }
    }

    public static  void checkR(list<Account> newAccount, list<Account> oldAccount, map<id, Account> newAccMap, Map<Id, Account> oldAccMap ){
        for(Account acc: newAccount){
            Account oldAcc = oldAccMap.get(acc.Id);
            decimal newArr = acc.annualRevenue;
            decimal oldArr = oldAcc.AnnualRevenue;
            if(newArr==null){
                newArr = 0;
            }

            if(oldArr==null){
                oldArr=0;
            }
            if(oldArr > newArr&& oldArr != newArr ){
                acc.annualRevenue.addError('Annual Revenue for an account connot be reduced ');

            }
        }

    }
}
