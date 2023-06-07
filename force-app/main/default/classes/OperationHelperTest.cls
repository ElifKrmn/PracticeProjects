@isTest
public  class OperationHelperTest {
@isTest
    private static void largestOutOfTwoNumbersTest() {
    OperationHelper a = new OperationHelper();
    Decimal largestA = a.largestOutOfTwoNumbers(9,5);
    Assert.areEqual(9, largestA);
    
    }

    @isTest
 private static void smallestOutOfThreeNumbersTest(){
    OperationHelper a = new OperationHelper();
    decimal smallest =a.smallestOutOfThreeNumbers(13, 25, 32);
    Assert.areEqual(13, smallest);
 }


 @isTest
 private static void sumOfPositiveInteger(){
    OperationHelper a = new OperationHelper();
    decimal pozitiveinteger=a.sumOfPositiveInteger(2);
    Assert.areEqual( 3, pozitiveinteger);
 }
}