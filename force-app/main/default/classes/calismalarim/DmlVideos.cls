public  class DmlVideos {
    public static void createContact() {

        contact cn =new contact(); // b os bir kontact olusturduk
        cn.salutation = 'Mr';
        cn.LastName = ' test Contact apex';
        insert cn;
    }// bi uslemle yeni bir contact create ettik
    public static void createUpdateContact(){
        contact c= new Contact();
        c.lastName='Karaman';
        insert c;
        system.debug(c);

        c.FirstName = 'Cem';
        update c;
    }

    public static void updateoneContact(){
        contact cn =[select Id, lastName,firstName from contact where LastName ='Karaman'];
        cn.FirstName ='Cem';
        cn.Phone = '21225265655';
        cn.Email = 'dfgfhdu@gmail.com';

        update cn;
}
}