public class Dog {
    public string name;
    public string color;
    public integer age;

    public  void checkAge(){
       
        if(age>0 && age>=1) system.debug('Puppy Dog');
        else if(age>=3) system.debug('Young Dog');
        else if(age>=5) system.debug('Adult Dog');
        else  system.debug('old dog');
    }
    public dog(){
        age=1;
        checkAge();
    }
    
    public dog(String dg1, string clr, integer a){
        name=dg1;
        color=clr;
        age=a;
        checkAge();
    
         
    }

    }
