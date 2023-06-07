public  class SoqlOrnekler {
   // industrisi education olan accountlari getirelim,a) tek tek yazdir, b) nameleri tek tek yazdir
   public static void selectIndustry(string Industry){
    //list<account> accList = [select id, name, industry from account where industry = 'Education'];
    system.debug('===selectindustry metodu calisti=== => ' );
    list<account> accList = [select id, name, industry from account where industry= :industry];
    system.debug('liste => '+ accList);
    system.debug('======== a-) tek tek yazdirma=======');

    for (account acc: accList){
    system.debug('account => '+ acc);
    }
    system.debug('===== b) nameleri yazdirma =======');
    for( account acc: accList){
        system.debug('name=>' + acc.name);
        system.debug('industry=> '+ acc.Industry);
    }

}
public static void childToParent(){
    // contactlari bagli olduklari accountlarin name ve annual revenue leri ile getirelim. annualRevenue bos olanlar gelmesin
    list<contact>  conList=[select id, name, account.name, account.annualRevenue from contact where account.annualRevenue != null];
    system.debug('listemisteki record sayisi = ' + conList.size());
    for(contact con : conList ){
        system.debug(con.name +  ' contactinin bagli oldugu accountun adi ='+ con.account.name + ' ve bu accountun annual rev = ' + con.account.AnnualRevenue);
        system.debug('==========');
    }
}

public static void parentToChild(){
    //en son create edilen 5 accountu bagli oldugu contactlari ile getir ve her bir accountun bagli oldugu contactlari ile beraber tek tek yazdir
    list<account> accList= [select id, name, createdDate, (select id, name from contacts) from account order by createdDate desc limit 5];
    // contacti olanlari kontaktlariyla yazalim. kontakti olmayanlari yazma
    for(account acc : accList){
        if(!acc.Contacts.isEmpty()){
        system.debug('name= ' + acc.name);
        system.debug('contactlar = ' +acc.contacts);
        system.debug('========');
        for (contact con : acc.contacts ){
            system.debug('contact name= ' +con.name);

        }
     
     }
   
   }
}
}
