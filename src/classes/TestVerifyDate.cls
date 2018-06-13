@isTest
public class TestVerifyDate {
    
 @isTest static void testTaskHighPriority(){
     Test.startTest();
      
     Date tody = date.today();
     Date Tendy = date.today()-10;
     VerifyDate.CheckDates(tody,Tendy);
     VerifyDate.CheckDates(Tendy,tody);
     Test.stopTest();
 }
    
}