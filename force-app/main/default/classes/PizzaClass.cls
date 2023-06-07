public class PizzaClass {
    integer orderId=0;
    integer quantity;
    string toppings;
    string type;
    decimal tax;
    string FeedBack;

    public void addCart(integer qua, string top, string typ){
        orderId ++;
        quantity = qua;
        toppings=top;
        type= typ;
      

        if (quantity ==1 ){
             tax = 0.18;
        }else if (quantity == 2){
        tax = 0.12;
        }else if(quantity ==3 ) {
        tax = 0.05;
        }else if (quantity >=4){
        tax = 0;
        }

    }
    public void cancelCart(){
     orderId=0;

    }

    public void feedback(string feedbck){
        feedback=feedbck;
        system.debug('feedback ' + feedbck);

    }
    
}