@isTest
private class SlickbackRemotingCtrlTest {

    static testMethod void testQuery() {
    	
    	Test.startTest();
    		ExtJSStoreRemotingCtrl.QueryObj queryObj = new ExtJSStoreRemotingCtrl.QueryObj();
    		queryObj.sobjname = 'Contact';
    		queryObj.fields = 'FirstName, LastName';
    		queryObj.start = 0;
    		queryObj.recordCount = 50;
    		ExtJSStoreRemotingCtrl.CRUDResponse resp = SlickbackRemotingCtrl.query(queryObj);
		Test.stopTest();
		
		System.debug('resp: ' + resp);
		System.assertEquals(true, resp.success);
    }
    
    static testMethod void testUpdat() {
    	
    	Test.startTest();
    		ExtJSStoreRemotingCtrl.CRUDData crudData = new ExtJSStoreRemotingCtrl.CRUDData();
    		crudData.sobjname = 'Contact';
    		crudData.fields = 'FirstName, LastName';
    		crudData.records = new List<Map<String, String> >();
    		ExtJSStoreRemotingCtrl.CRUDResponse resp = SlickbackRemotingCtrl.updat(crudData);
		Test.stopTest();
		
		System.debug('resp: ' + resp);
		System.assertEquals(true, resp.success);
    }
    
    static testMethod void testDescribe() {
    	
    	Test.startTest();
    		List<ExtJSStoreRemotingCtrl.FieldInfo> resp = SlickbackRemotingCtrl.describeFields('Contact', new List<String>{'FirstName'});
		Test.stopTest();
		
		System.debug('resp: ' + resp);
		System.assertEquals(true, true);
    }
}