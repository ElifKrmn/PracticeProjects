@isTest
public class DmlAndSoqlMethods2Test {
    // test setup olusturdugmuzda her metodu ayri ayri test etmeye gerek yok. test setUp ile hepsine ulasiriz
   @TestSetup
   static void makeData(){
    list < Account> accList =new Account();
    Account acc1= new Account();
    acc1.Name= 'Salesforce';
    acc1.Industry= 'Education';
    accList.add(acc1);
    
    Account acc2= new Account();
    acc1.Name= 'Soft';
    acc1.Industry= 'Education';
    accList.add(acc2);
    
    Account acc3= new Account();
    acc1.Name= 'innovas';
    acc1.Industry= 'Education';
    accList.add(acc3);

    insert accList;
    
    list<contact> conList = new List<contact>();
    for (Integer i = 1; i < 300; i++) {
        
    if(i<100) {
        contact c = new Contact();
        c.LastName='Test 1';
        c.AccountId=acc1.id;
        conList.add(c);
    }else if (i<= 200 ){
        contact c = new Contact();
        c.LastName='Test 1';
        c.AccountId=acc2.id;
        conList.add(c);
   }else{
        contact c = new Contact();
        c.LastName='Test 1';
        c.AccountId=acc3.id;
        conList.add(c);
   }
        
    }
    insert conList;
} 
@isTest 
Private
}