map<string, integer> itemQuantityMap = new map<string, integer>();
itemQuantityMap.put('apple', 2);
itemQuantityMap.put('uzum', 1);
itemQuantityMap.put('Portakal',5 );
itemQuantityMap.put('NoteBook ', 1);

system.debug(itemQuantityMap);

//apple in karsisindaki sayyi gormek istiyoruz. istersen variabl atayabilirsin istersen direk key olarak yzabilirsin 
// variable ile yapalim 

string itemOne ='apple';
integer itemOneVal = itemQuantityMap.get(itemOne);
system.debug(itemOne + ' keyine ait value ' +itemOneVal);