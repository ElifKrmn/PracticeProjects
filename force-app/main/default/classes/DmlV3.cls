public  class DmlV3 {
    public static void createmultiAcc() {
        // 5 Account create etme
        // account acc= new account(); bu sirayi 5 defa yazabiliriz ya da for dongu olusturabilirz
        list<account> accList =new list<account>();
        for (Integer i = 1; i < =5 ; i++) { // ama for dongusu daah dogru olur
          account acc = new account();
          acc.name = 'Account Demo'+ i;
         // for dongusu icine dml yazamayiz o yuzden yapmmaiz gereken sey for un ustunde bir list olusturmak
          // sonra o listeyi doldurcaz
          accList.add(acc); // bu sekilde for her dondugunde bir account create edecek for loop icindeki verdigimiz veriye gore
        }
      // listemizi her seferinde islem yapmadan once kontrol etmemiz uygun olur bos mu dolu mu diye
      if(!accList.isEmpty()){
        Insert accList; // dedigimizde bize 5 tane lsite insert edecek
    }
  
// bu accountlara bagli 5 er tane contact olusturacaz
       List<Contact> cont = new list<Contact>();
        for(account  ac : accList) {
// her accounta bagli kontactlar olusyrucaz bunu for i ile yapicaz
          for (Integer i = 1; i < 5; i++) {
            contact cn = new contact();
            cn.lastName ='contact demo ' + i;
            // bu contacti accounta bagliycaz ve yolu:
            cn.AccountId= ac.id; //contact da accountId diye bir field imiz vardi, bu field in icine ilgili accountun id sini koyunca baglamis oluruz yan 
          // yine insert u for un icine yazamayacigi,iz icin for dongusu ustune list yaziyoruz ve add metoduyla listemi kontactlara ekliyorum     
            cont.add(cn);
        }

}  if(!cont.isEmpty()){
  insert cont;
}
}
}