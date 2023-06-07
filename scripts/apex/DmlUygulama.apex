//recor create:hangi objenin rec ise required alanlari doldurmak zrundayiz
//
Account acc = new Account();
acc.name= 'Batch 16 Dml';
acc.AnnualRevenue= 1000000;
acc.industry='Energy';

insert acc;


// contact crate edicez ve account  a bagliycaz,parent child ilisiki
Account acc2= [select id from account where name ='batch 16 dml' limit 1];
contact con =new contact();
con.LastName='contact batch 16';
con.AccountId=acc2.id;

insert con;

//custom obj  insert yapma
Salesforce_project__c sp= new Salesforce_Project__c();
sp.project_Name__c= 'Batch 16 project';
sp.status__c='new';
insert sp;

Salesforce_Ticket__C st =new Salesforce_Ticket__c();
st.salesforce_project__c=sp.id;
st.Subject__c = 'Deneme';
insert st; 


//Update

Account acc3= [SELECT id, name, Type, Industry from Account where name = 'batch 16 Dml' limit 1];
acc3.name +='Update'; 
acc3.type='Prospect';
acc3.industry='Education';
update acc3;

//En yuksek Annual rev olan ilk 5 accountu getir, bunlarin descriptionlarina tarihi belirterek ' tarhi bu account en yuksek yillik cirosu olan 5 accounttan biri'

list<account> accList =[SELECT id, name, AnnualRevenue, Description from Account where AnnualRevenue != null order by AnnualRevenue desc limit 5];
for(account acc : accList){
    acc.Description= date.today() + 'tarihi itibariyle bu account en yuksek yillik cirosu olan 5 accounttan ';
}

update accList;

// 5 account create edin her accounta bagli 5 opportunity create et
List<Account> accList2 =new List<Account>();
for(integer i= 1; i<= 5;i++){
account acc = new account();
acc.name='DML Deneme ' + i;
accList2.add(acc);

}

insert accList2;

List<opportunity> oppList = new list<opportunity>();
for( account acc : accList2){
    for(integer i=1; i<=5; i++){
    Opportunity opp= new Opportunity();
    opp.Name= 'Dml Opoprtunity Demo ' + i;
    opp.stageName= 'prospecting';
    opp.CloseDate= date.today().addDays(60);
    opp.AccountId=acc.id;

    oppList.add(opp);
    }
    insert oppList;
}


