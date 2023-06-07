public  class SoqlPChild {
    public static void printContacts() {
        list<contact> conAcc =[SELECT id, name,Account.Id,Account.name FROM Contact ];
        for (contact eachContact : conAcc) {
            system.debug('account id==>' +eachContact.Account.Id + ' account name ==>' +eachContact.Account.Name);   
            System.debug('###############');
        }
    }

    public static void printAccount(){
        list<Account> listAccount=[SELECT id, name, (SELECT Id,name FROM Contacts) FROM Account];
        for (Account eachAcc : listAccount) {
            system.debug('contact Name ==> '+ eachAcc.Name + 'Contact id==> ' + eachAcc.Id);
            for (contact eachContact : eachAcc.Contacts) {
                system.debug(eachContact.Name +' , '+ eachContact.Id);
            
                System.debug('###############');
            }
            
            
        }
    }
}