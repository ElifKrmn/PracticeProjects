public class Dml3Assign {
    public static void createBlk() {
        list<contact> contInsert = new list <contact>();
        for (Integer i = 1; i < =4; i++) {
            contact cn = new contact();
            cn.Name= 'Mark';
            cn.lastName= 'Bufallo';
            contInsert.add(cn);
     
        }

        
        for(integer i=1; i<=3; i++){
            contact cn = new contact();
            cn.name = 'Chris';
            cn.lastname= 'Hemsworth';
            contInsert.add(cn);
        }
        for(Integer i = 1; i < = 3; i++) {
            contact cn= new contact();
            cn.Name= 'Scarlet';
            cn.lastName='Johnson';
            contInsert.add(cn);
        }
       
    }

    public static integer updBlkCon(string Lastname, string PhoneNumber){
        integer result = 0;
        list<contact> cntc = [SELECT id, name, phone From contact WHERE lastName =:lastName];
        
    }
        
}