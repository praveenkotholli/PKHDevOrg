trigger AccountAddressTrigger on Account (before insert, before update) {

    	For (Account A : Trigger.New) {
			if(A.BillingPostalCode != null && A.Match_Billing_Address__c){
				A.ShippingPostalCode= A.BillingPostalCode;
		}

	}
    
}