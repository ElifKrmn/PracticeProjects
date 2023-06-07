public class DmlsVideo2 {
    public static id CreateAccount() {

    Account acc = new Account();
    acc.name = 'Test Account DML';
    insert acc;
    return acc.id;

    }

    public static void createCont(){
     id accId = createAccount(); // bu metodu cagirdigimda typi id donecek ve ve o metod accid nin icine girecek. 
    contact con = new contact();
    con.LastName= 'contact DML';
    insert con;
    
    }
    public static void updateOneContact(){
        Account acc = [SELECT id, name from Account order by CreatedDate desc limit 1];
        contact con = [SELECT id, lastName FROM contact where AccountId =null];

        system.debug('contact ' + con);
        con.AccountId= acc.id; // burda baglama isini yaptik.'0013x00002RZ1nOAAT'; id numarasi yazmak yerine acc id  yazdigimizda ad yi dondurecek
        update con ;
    }
}