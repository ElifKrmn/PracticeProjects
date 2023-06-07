public  class StringAssignment {
    public void strAssignment() {
        string localString= 'Thanks for the session';
        integer len= localString.length();
        system.debug(len);
        
        string upper=localString.toUpperCase();
        system.debug(upper);
        
        boolean checkif = localString.contains('session');
        system.debug(checkif);
        boolean checkiff= localString.contains('sessions');
        system.debug(checkiff);
        boolean checkifff=localString.contains('SESSION');
        system.debug(checkifff);
    }
}