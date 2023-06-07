public  class GeneralList {
    public static list<String> toCaps(list<string> lst ) {
        list<string> newList= new list<string>();
        for(string eachStr: lst){
            System.debug(eachStr);
            string caps = eachStr.capitalize();
            newList.add(caps);
        }
        return newList;

    }

    public static void printAge(list<date> dts){
     date todayDate =date.today(); 
     for(date d : dts){
     system.debug(d);
     integer days = d.daysbetween(todayDate);
     integer yas= integer.valueOf(days/365);
     system.debug('yas ' + yas);
}
}
public  string hello ( string x){
    integer uznlk = x.length();
    for (Integer i = 1; i < uzunluk; i++) {
        message += 'hello '+ i;
        
    }
    return message;

}
}