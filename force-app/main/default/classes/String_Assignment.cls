public class String_Assignment {
    public void stringAssignment() {
        string localString='Thanks for the session on the string';
        system.debug(localString);
        
        integer a = localString.length();
        system.debug('The length of the string is ' + a);

        string upperCase = localString.toUpperCase();
        system.debug('The upper case of the string is '+ upperCase );

        Boolean checkString = localString.contains('session');
        system.debug('Does '+ localString+ ' contain "session": '+ checkString);
       
        Boolean check2String = localString.contains('sessions');
        system.debug('Does '+ localString+ ' contain "sessions": '+ check2String);
        
        Boolean check3String = localString.contains('SESSION');
        system.debug('Does '+ localString+ ' contain "SESSION": '+ check3String);
       
    }
}