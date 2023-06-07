public class Collections {
    public static string ListAssignment(integer i) {
        string output_Month='';
        list<string> LstMonth = new list<string>();
            LstMonth.add('January');
            LstMonth.add('February');
            LstMonth.add('March');
            LstMonth.add('april');
            LstMonth.add('May');
            LstMonth.add('June');
            integer lstsize= LstMonth.size();
            output_Month= LstMonth.get(2);

            if(i> lstsize){
               output_Month='Not a valid nr'; 
            }else if(i<1){
                output_Month='Not a valid nr';
            }else{
                output_Month= LstMonth[i-1];
            }


            return output_Month;
        }
    
        }
