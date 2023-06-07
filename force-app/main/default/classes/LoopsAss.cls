public class LoopsAss {
    public integer whileLoopM(integer n) {
        integer i = 1;
        while (i<= n ) {
            system.debug(i);
            i++;
        }
        return i;
     }
     public void printEven(){
    
        for( integer i=1; i<100 ; i++){
          if(math.mod(i, 2)==0){
            system.debug(i);
          }

        }

        
    
        
     }
     public integer printPower(integer n){
        integer prod =1;
        for(integer i=1;i<=n; i++){
            prod=prod*n;
        }

       return prod;     
     }
 
}