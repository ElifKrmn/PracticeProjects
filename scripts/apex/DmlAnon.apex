
DmlV3.createmultiAcc();

account acc= new account(); // boyle bir account create ettik
acc.name= 'Default';
insert acc;

//herhangi bir accounrta bagli olmayan contactlari buraya baglayaca

list<contact> conList =[SELECT id, name, AccountId FROM contact Where accountId =null];
system.debug(conList);

// soql sorgusu ile default olan id ve name i getirmek istiyorum:
Account acc = [SELECT id, name from WHERE name = 'Default' limit 1];

id accId = acc.id;
// contactoi baglayacagimiz icin contacti for dongusu icine aliyoruz
for(contact ct:conList){
    ct.AccountId = accId; // baglamis olduk accounta
}
update conList;