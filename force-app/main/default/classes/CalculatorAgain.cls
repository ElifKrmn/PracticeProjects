public class CalculatorAgain{
    public integer sumOfPositiveIntegers ( integer n){
        integer x;
        if( n<0){
            system.debug('We are not calculating the sum for negative numbers' );
           

        }else {
            x=0;
            for(integer i= 0;i<=n;i++){
            x+=i;
        }
    }
        return x;
}
public void multiplicationTable (integer b){
    for (integer i=1; i<=10 ; i++){
    integer sub= i*b;
    system.debug(i+ 'x' + b + '=' + sub);

    }
}
public void sumOfSquares(integer z){
    for( integer i =1; i<= z; i++){
        integer sum1 = 0;
        sum1+=i*i;
        system.debug('tum dersler '+ sum1);
    }
}
}
