public with sharing class Dml2Assig {
    public static void insertDml() {
        Account acc= new Account();
        acc.Name = 'Elif Assignment';
        
        Account acc1 = new Account();
        acc1.Name = 'Elif Assignment';
        insert acc;
        insert acc1;

    }

    public static void updateD(){
        Account acc2= new Account();
        acc2.name='Account Created';
        insert acc2;

        acc2.name= 'Account Updated';
        update acc2;


    }
}