public  class DmlAndSoqlMethods2 {
    public static integer accountDmlAndSoqlMethods2(string indst) {
        list<account> accList = [SELECT id, name, industry FROM Account WHERE industry =:indst]; 
        integer recSayi = accList.size();
        return recSayi;
    }

    public static void childToParent(){
        list<contact> conList = [SELECT id, LastName FROM contact WHERE Account.industry= 'Energy'];
        for (contact con : conList) {
            con.LastName = con.LastName + 'update';

            
        }
        update conList;
    }
}