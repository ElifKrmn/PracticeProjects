//Create one employee for latest created department
public static void employeeDepartment() {
     //write SOQL to fetch latest created department (only 1)
     department__c d =[select id, name__c, createddate from department__c order by createddate desc limit 1];

     //create employee for d

     //create new instance for employee
     Employee__c emp1 = new Employee__c();
     //set field names
     emp1.First_Name__c = 'Don';
     emp1.Last_Name__c = 'Carolina';
     //set date
     emp1.JoinDate__c = date.newInstance(2023, 03, 01);
     //emp1.isHuman__c = true;
     emp1.Salary__c = 500000;
     emp1.Country__c = 'Mexico';
     //relationship field
     //emp1.Department__c = 'a02Dp000001dk2zIAA';
     emp1.Department__c = d.Id;

     insert emp1;
}