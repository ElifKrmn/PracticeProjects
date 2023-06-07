public class soqlAssignment1 {
    public static void topEmployees() {
        list<employee> listSalary =[SELECT Last_Name__c, Id, First_Name__c, Name, Salary__c FROM Employee__c order by Salary__c  desc 
        limit 5];
        system.debug('top 5 employees acording to salary =>  ' + listSalary);
        return listSalary;
    }
    public static string mostPopularCountry(){
        aggregateResult cntry= [SELECT Id, Country__c FROM Employee__c order by Country__c  desc limit 1];
        system.debug(' Most Populated country => '+ cntry);
        return cntry;
    }
}