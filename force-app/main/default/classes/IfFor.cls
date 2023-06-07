public  class IfFor {
    public string hello(string text) {
        string mesaj='';
        integer uzunluk=text.length();
        for (Integer i = 1; i < uzunluk; i++) {
            mesaj += ' hello ' + i;
           system.debug(mesaj);
        }
        return mesaj;
            
        }
            
        }
            
    