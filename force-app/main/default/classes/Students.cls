public class Students {
    string firstName;
    string lastName;
    integer classyear;
    integer grade;
    string major;

    public void setFirstName(string firstname) {
        this.firstName=firstname;
    }
    public void setlastName(string lastname){
        this.lastName=lastname;
    
    }
    public void setclassyear(string classyear){
        date todaysdate=date.today();
        integer todaysyear=todaysdate.year();
        
        if(classyear <= todaysYear && classyear > (todaysYear-100))
        this.classyear=classyear;
        else{classyear=0;
        system.debug('no such class year exists for us');
        }
    }
    public void setmarks(string marks){
       
        if(mark > 100 || mark<0){
        marks=-1;
        system.debug('Please give proper marks');
        }else{
        this.marks=marks;
        }
    }   
    Public void setmajor(string major){
    if(major.length()>2 ){
    this.major=major;
    }else{
        major='N/A';
        system.debug('there is no such major or stream in our ni');
    }
    }
    public string generateReport(){
        string grade;
        if(marks>90)
        grade='A';
        else if(marks>=80)
        grade='B';
        else{
        grade='F'}
        system.debug(
            
        )
    }
}