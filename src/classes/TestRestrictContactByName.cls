@isTest
public class TestRestrictContactByName {
 @isTest static void testTaskHighPriority(){
     Test.startTest();
     try{
    	Contact c = new contact();
     	c.LastName = 'INVALIDNAME';
     	insert c;
     }catch(Exception e){
         system.debug('Error');
     }
     Test.stopTest();
 }
}