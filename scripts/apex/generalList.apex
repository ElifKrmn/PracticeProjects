// listeyi burada oluturcaz
list<string> ls = new list<string> {'Ali', 'Bera', 'Cem', 'Sueda','Elif'};
list<string> ls2= GeneralList.toCaps(ls);
system.debug(ls2);

list<date> birthdateList= new list<date>();
date dt1= date.newInstance(2005, 5, 2);
date dt2 = date.newInstance(2011, 11, 17);
date dt3= date.newInstance(2001, 4, 15);
birthdateList.add(dt1);
birthdateList.add(dt2);
birthdateList.add(dt3);
GeneralList.printAge(birthdateList);


