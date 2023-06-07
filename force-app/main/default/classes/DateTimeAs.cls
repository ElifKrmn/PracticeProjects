public  class DateTimeAs {
    public void DateMethods() {
        date varDate = date.newInstance(2001, 01, 01);
        system.debug(varDate);
    }
    public void timeMethods(){
        time varTime = time.newInstance(06, 21, 29, 0000);
        system.debug(varTime);

    }
    public void dateTimeMethods(){
       Datetime varDateTime= Datetime.newInstanceGmt(2001, 1 , 1, 18, 21, 29);
        system.debug(varDateTime);
    }
}