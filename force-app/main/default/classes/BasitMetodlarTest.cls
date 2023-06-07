@isTest
public  class BasitMetodlarTest {
    
    @istest
    private static void HosgeldinTest() {
        test.startTest();
        BasitMetotlar bm = new BasitMetotlar();
        bm.hosgeldin();
        test.stopTest();
    }
    @isTest
    private static void HosgeldinIsimTest() {
        test.startTest();
        string msg = BasitMetotlar.hosgeldinIsim('elif');
        test.stopTest();
        System.assertEquals('Hosgeldin elif', msg);

    }
    @isTest
    private static void toplamaTest() {
        test.startTest();
        integer tpl= BasitMetotlar.toplama(11, 22);
        test.stopTest();
        System.assertEquals(33, tpl);
    }
    @isTest                                                                                                                                                                                                                 
    private static void ifNumbersTest() {
        test.startTest();
        BasitMetotlar.ifNumbers(11, 5);
        BasitMetotlar.ifNumbers(10, 15);// if elselerde 1. if in icine girer ikinciye girmez. ve bu da basari oranini dusuk gosterir. 2. yi de okuyabilmesi icin bu cumleyi yazariz
        test.stopTest();
    }
}