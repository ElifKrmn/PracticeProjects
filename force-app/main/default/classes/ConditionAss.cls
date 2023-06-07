public  class ConditionAss {
    public string  ifCl (integer c) {
        string outMonth ;
        
        if (c ==1) {
            outMonth= 'January';
        
        }else if (c==2){
            outMonth='February';
        }else{
            outMonth='Not a valid month';

        }
       

        return outMonth;


    }

    public string caseMethod(string quarter){
        string message= 'Enter a proper Month Name';
        switch on quarter{
            when 'Aralik','Ocak', 'Subat'{
                message='quarter 1 ';
            }
            when else {
                message = 'Not a valid QUARTER';
            }

            }
            Return message;
        }
    }
