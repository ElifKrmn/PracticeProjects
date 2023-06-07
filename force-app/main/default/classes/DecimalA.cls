public  class DecimalA {
    public void DecimalMethods() {
string s1= '123.456789';
decimal d1= decimal.valueOf(s1);
decimal d2= d1.setScale(2);
system.debug(s1);
system.debug(d1);
system.debug(d2);

    }
}