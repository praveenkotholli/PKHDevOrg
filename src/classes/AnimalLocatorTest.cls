@isTest
private class AnimalLocatorTest{

    @isTest static  void getAnimalNameByIdTest() {
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string AnimalName = AnimalLocator.getAnimalNameById(100);
        System.assert(AnimalName == 'mighty moose');
    }
}