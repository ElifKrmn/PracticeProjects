public class SqolDemo4{
List<aggregateResult> result = [select country__c, count(id), sum(salary__c) from Employee__c group by Country__c];
 
 for (AggregateResult ar : result){
    system.debug('counrty name is '+ ar.get('country__c'));
    system.debug('number of employees are ' + ar.get('exprO'));
    system.debug('total salary is  ' + ar.ger('expr1'));

 }

}