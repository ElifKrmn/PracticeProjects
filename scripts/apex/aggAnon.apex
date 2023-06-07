// countta boyle ama digerlerinde farkli
integer leadSayisi= [select count() FROM lead];
system.debug('lead sayisi => ' + leadSayisi);

//digerlerinde aggregateResult diye yazilir data type
AggregateResult toplam=[SELECT sum(amount), avg(amount), max(amount), min(amount) FROM Opportunity];
system.debug('toplam=> ' +Toplam);

// aggr result mao seklind doner. eger pap in key kismin ialmak istersekasagidaki gibi get metoduyla key i yazariz
system.debug('Toplam==>'+ toplam.get('expr0'));
//aggregate reasult olan bir ifadeyi decimal olarak karsilamak istiyorsak
// ornek: decimal tpm=(decimal) toplam.get('expr 0') seklindeki gibi decimali parantez icinde esitligin diger tarafina yazariz
decimal result =(decimal)toplam.get('expr0');
system.debug('toplam = ' + result);
//average a ulasmak istiyorsak:
system.debug('ortalama '+ toplam.get('expr1') );
decimal ort = (decimal)toplam.get('expr1');
system.debug('ortalama =' + ort.setScale(1)); // setscale methody virgulden sonra 1 kalcak sekilde yuvarladi


