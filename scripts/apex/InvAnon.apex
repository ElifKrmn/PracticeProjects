InvManager im = new InvManager();
im.setCostPrice(100);
im.setsellingPrice(150);
im.productDisplay();

InvManager im1 = new InvManager();
im1.setCostPrice(200);
im1.setSellingPrice(210);
im1.productDisplay();

InvManager im2= new InvManager('product 1', 'p123');
im2.setCostPrice(500);
im2.setSellingPrice(520);
im2.productDisplay();

InvManager im3= new InvManager('product 2', 'p456');
im3.setCostPrice(40);
im3.setSellingPrice(48);
im3.productDisplay();

system.debug('product total '+InvManager.productCount);
