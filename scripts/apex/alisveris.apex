list<string> alsiverisListesi = new list< string> ();
alsiverisListesi.add('elma');
alsiverisListesi.add('sut');
alsiverisListesi.add('bal');

system.debug(alsiverisListesi);

integer size = alsiverisListesi.size();
system.debug(size);

list<date> dogumGun = new list<date>();
date dg1= date.newInstance(2011, 11, 17);
dogumGun.add(dg1);
date dg2=date.newInstance(2010, 9, 7);
dogumGun.add(dg2);
date dg3= date.newInstance(1981, 11, 15);
dogumGun.add(dg3);
date dg4= date.newInstance(1974, 8, 18);
dogumGun.add(dg4);

system.debug(dogumGun);
dogumGun.sort();
system.debug(dogumGun);