public class ShoppinngCart {
    string name;
    map<string, decimal> shopItems;

    public static decimal discount;
    decimal totalAmount;
    public ShoppinngCart(){
       this.name='';

    }
    public ShoppinngCart(string name){
    this.name=name;
    system.debug('Hello '+ this.name+ ' we are glad you are here, what would you like to shop today?');
    }
    public void setName(string name){
        this.name=name;

    }
    public string getName(){
        return this.name;

    }

    public void addItem(string itemName){
        shopItems.put(itemName,0.0);

    }
    public void addItems(string itemName, decimal price){
        shopItems.put(itemName, price);
    
    }
     public void addItems( map<string, decimal> itemPrice){
        shopItems.putAll(itemPrice);
     }
     
     public string removeItem(string itemName){
        string msg;
     if(shopItems.containsKey(itemName)){
        shopItems.remove(itemName);
        msg= itemName+ 'removed succesfully ';
     }else{
        msg='no such item is added in cart, how can I remove it buddy?!';
     
     }
     return msg;
    }
    public Map<string,decimal> getShopItems (){
        return shopItems;
    }
    public decimal getTotalAmount(){
        totalAmount=0;
        for(decimal eachAmount: shopItems.values()){
        totalAmount+= eachAmount;
    }
    return totalAmount;
}
public void printSummary(){
    system.debug('You have added ' + shopItems.size() +' items in your cart,each items and its prices are below');
    for (string itemName : shopItems.keySet()) {
        system.debug('item name ' +itemName + ', its price is' + shopItems.get(itemName));
    }
        system.debug('total value of your cart '+ getTotalAmount());
        if (getTotalAmount()> =300){
            decimal disprice= getTotalAmount()* discount;
            decimal finalPrice=getTotalAmount()-disprice;
            system.debug('FInal price to pay is '+ finalPrice);
            system.debug('congrats, you saved ' + disprice);

        }else{
            system.debug('Add items worth ' + (300- getTotalAmount()) + 'to get bind blowing discount');
        }

    }
    public void clearcart(){
        shopItems.clear();
    }
}

