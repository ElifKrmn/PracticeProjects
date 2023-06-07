public class SoqlVideo {
    public static void allContacts() {
        list<contact> listContact=[select id, name, phone from contact];
        System.debug(listContact);
    }
    public static void latestContact(){
        Contact latest=[Select Id, phone, email from contact ORDER BY CreatedDate desc Limit 1];
        system.debug('son olusturulan kayit ' + latest);
// baska bir kayda mesela name e ulasmak istedigimizde:
        System.debug(latest.name);
        System.debug(latest.email);


    }
    public static void contactsWithEmail(){
        list<contact> emailList =[SELECT id, name, email from contact where email != '' ];
        System.debug('listemizin kayit sayisi = ' + emailList.size());
    // her bir contact in name ve e maili ayri ayri yazalim yani for 
    for (contact eachnmEmail :emailList) {
      System.debug(eachnmEmail.name);
      System.debug(eachnmEmail.Email);
      System.debug('=========');
    }
    }
    // filtreleme parametreli metot ile. fname e gore filtre yapicaz:
    public static void filterName(string fname){
    list<contact>  filteredContacts = [select id, name, phone, email from Contact where firstName =:fName];
    System.debug(filteredContacts);
}

}