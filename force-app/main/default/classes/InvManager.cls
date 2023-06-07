public  class InvManager {
    public string productName;
    public string productCode;
    public integer costPrice;
    public integer sellingPrice;
    public static integer productCount=0;

    public InvManager() {
    productCount ++;

    }

    public InvManager(string productName, string ProductCode){
    
    this.productCode=productCode;
    this.productName=productName;
    productCount++;
    }

    public  void setCostPrice(integer costPrice){
        this.costPrice=costPrice;
    }

    public  integer getCostPrice(){
        return this.costPrice;

    }
    public void setSellingPrice(integer sellingPrice){
        this.sellingPrice=sellingPrice;

    }
    public integer getSellingPrice(){
        return this.sellingPrice;
    }
    public  void productDisplay(){
        system.debug(this.productName);
        system.debug(this.productCode);
        system.debug(this.sellingPrice);
        system.debug(this.costPrice);
        
        decimal profirMargin=((this.sellingPrice-this.costPrice)*100/this.costPrice);
        if(profirMargin>=0.20){
            system.debug('Star Product');
        }else {
            system.debug('Average Product');

    }


}
}