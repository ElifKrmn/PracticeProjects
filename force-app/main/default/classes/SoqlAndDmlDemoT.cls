public with sharing class SoqlAndDmlDemoT{

    public static integer getAccWithOpp(){
        List<Opportunity> lstOpp = [SELECT id,Name,AccountId FROM Opportunity WHERE AccountId != null ];
    
        Set<Id> accIds = new Set<Id>();
        for(Opportunity opp : lstOpp){
            accIds.add(opp.AccountId);
        }

        List<Account> lstAcc = [SELECT id,Name FROM Account Where Id IN: accIds ];
        System.debug(lstAcc.size());
        return lstAcc.size();
    }

    public static integer getAccWithOpp2() { 
        
        List<Account> lstAcc = [SELECT id,Name FROM Account Where Id IN (SELECT AccountId FROM Opportunity WHERE AccountId != null ) ];

        System.debug(lstAcc.size());
        return lstAcc.size();
        
    }
    public static void createAccount(string isim) {
        account acc=new account();
        acc.name=isim;
        insert acc;
        list<contact> lstCon= new list<contact>();
        for (integer i = 1; i <= 5; i++) {
            contact con =new contact();
            con.firstname=acc.name;
            con.lastName='Contact '+i;
            con.accountId=acc.id;
            lstCon.add(con);
        }
       
        insert lstCon;

        
    }
    public static void highestAnnualRevenue() {
        account acc=[select id,name,annualrevenue,description from account where annualrevenue!=null order by AnnualRevenue desc limit 1 ];
        string message=date.today() +'tarihi itibari ile '+acc.name+' accountunun AnnualRevenue si = '+acc.annualrevenue+' tüm accountlar içinde en büyüktür.';
        acc.description=message;
        update acc;
        
    }
}