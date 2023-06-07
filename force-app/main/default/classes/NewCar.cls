public class NewCar {
    integer currentSpeed=0;
    string carType='';
    string carName='';

    public void startCar(string carType, string carName) {
    
        system.debug('car type ' +carType + ' car name '+ carName );
    }

    public void Acceerate ( integer x){
      currentSpeed += x;
      system.debug(currentSpeed);
    }

    public void Brake(integer y){
       currentSpeed -=y;
       system.debug(currentSpeed); 
    }
    public void stopCar(){
        currentSpeed=0;
        system.debug(currentSpeed);
    }

    public void CheckSpeed(){
    
        if(currentSpeed<=30){
        system.debug('city mode');
        }else if (currentSpeed <=60){
        system.debug('Economy Mode');
        }else{
        system.debug('sport mode');
    }
    
}
}
