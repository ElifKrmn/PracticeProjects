list<contact> conList = new List<Contact>();
contact c1 = new contact(); //1. kontagimizi olusturuyoruz
c1.firstName='John0';
c1.lastName= 'Deep';
conList.add(c1); //bu metod ile c1 i conlist liosteme ekledim

contact c2 = new contact();
c2.firstName='Jerry';
c2.lastName= 'Liz';
conList.add(c2);

insert conList;

c1.firstName='John0 Update';
c1.lastName= 'Deep Update';

c2.firstName='Jerry upd';
c2.lastName= 'Liz upd';

update conList;