public class SoqlAssignments {
    public static void SoqlWhereClause() {
        list<contact> lstcontact =[SELECT id, name FROM Contact WHERE Name  like 'A%'];
        System.debug(lstcontact);

    }

    public static void soql_FromMethod(){
       list<contact> lstContact =[SELECT id, name, lastName, phone FROM contact ];
       for (contact  eachCon : lstContact) {
        System.debug(eachCon.LastName + eachCon.phone);
       }
    }

}