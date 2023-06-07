public class DmlPractice {
    public static void OppUpdate(){
        list<opportunity> oppList= [SELECT id, name, Amount, description from Opportunity where amount != null order by amount desc limit 10];
        for( Opportunity eachOpp: oppList){
            eachOpp.Description += 'This is one of the top 10 opportunities Please work on this properly';
        }
        update oppList;
    }


public static list<Opportunity> AccOpp (id ids, integer n){
    list<opportunity> oppList = new List<Opportunity>();
    if(n<=0 ){
        system.debug('Please tell us how many opportunities needs to be created');
    }else{
        
        Account acc=[select id, AnnualRevenue, Name from Account where id =:ids];
        for(integer i=0; i<=n ; i++){
            Opportunity opp =new Opportunity();
            opp.name= acc.name;
            opp.CloseDate=date.today().addYears(3);
            opp.StageName='Prospecting';
            opp.Amount=acc.AnnualRevenue/n;
            opp.Accountid=acc.id;

            oppList.add(opp);

           
        }
        insert oppList;
        system.debug(oppList);
    }
    return oppList;
}

public static void AccWithNoCont(){
    list<Account> accList = [select id, name from account  where id not in (select accountId from contact) ];
    list<contact> conList = new list<contact>();
    for(account eachAcc :accList){
        contact cont= new contact();
        cont.LastName=eachAcc.Name;
        cont.AccountId= eachAcc.id;
        conList.add(cont);
        
    }

    insert conList;
}

public static void deleteOpp(){
    List<Opportunity> oppList =[select id, name,amount, stageName from opportunity where amount <20000 and StageName = 'Closed Won' limit 2];
    
    delete oppList;
}

public static list<account> createAcc(integer n){
    list<Account> accList =new List<Account>();
    for(integer i=1 ; i<=n ;i++){
        Account acc= new account();
        acc.name= 'new Account ' + i;
        acc.phone='2324546363';
        acc.Rating= 'Hot';
        acc.ShippingCity = '246 Nultimore rd Kirkland, WA 98056';
        acc.BillingStreet= '1 Rutgers ct Buffalo Gorve IL 60073';
        accList.add(acc);
    }
    insert accList;
return accList;
}

public static list<contact> conAcc(List<account> listAcc,integer n){
    list<contact> contList = new list<contact>();
 for(account eachAcc : listAcc){
    for(integer i=1; i<=n; i++){
    contact cont = new contact();
    cont.firstName='Mike ' + i;
    cont.LastName='Tyson ' + i;
    cont.AccountId = eachAcc.id;
    cont.phone= '555554141';
 }

}
insert contList;
return contList;

}

public static list<contact> caseCont(list<contact> contL){
    list<case> lc = contL;
    for( contact eachCont : contL){
        Case cs = new Case();
        cs.Contactid = eachContact.id;
        cs.Accountid=eachCont.acoountid;
    }
}
}