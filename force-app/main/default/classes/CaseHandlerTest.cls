@isTest
public  class CaseHandlerTest {
    @isTest
    private static void CaseHandlerTest() {
        list<case> newListCase = new list<case>();
        for(integer i= 0 ; i<50 ; i++){
        case c = new case();
        c.subject= 'Parent Case may contain secret info, do something NOW ' + i ;
        c.Priority='High';
        c.status = 'Working';
        c.origin = 'Web';
        if(i<20){
            c.description= 'secret info not allowed in case password';

        }else if(i<50){
            c.description = 'Description';


        }
        newListCase.add(c);
    }
    test.startTest();
    insert newListCase;
    test.stopTest();
    list<case> newListCase2 =[SELECT id, description FROM case where parentId !=null];
    Assert.areEqual(20, newListCase2.size());
    
}
}