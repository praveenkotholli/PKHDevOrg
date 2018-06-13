@isTest
private class ParkLocatorTest{

    @isTest static void testPartLocator() { 
       Test.setMock(WebServiceMock.class, new ParkServiceMock());

       ParkLocator.country('India');
        
    }
}