set<integer> s1;  // bu ifade tanimlanmamis dolayisiyla sonucu  null verir. bu yuzden de bu ifadeye herhangi bir deger ekleyemeyiz
system.debug(s1);

set<integer> s2= new Set<Integer>();
system.debug(s2);

Boolean emptyResult= s2.isEmpty();
system.debug(emptyResult);

set<string> hayvanlar = new set<string>();
hayvanlar.add('kus');
hayvanlar.add('balik');
hayvanlar.add('kedi');
hayvanlar.add('inek');

boolean kusVar= hayvanlar.contains('kus');
system.debug(kusvar);


