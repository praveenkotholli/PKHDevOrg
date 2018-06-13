({
	createItem: function(component, newItem) {
            var action = component.get("c.saveItem");
            var newItem = JSON.parse(JSON.stringify(component.get("v.newItem")));
            action.setParams({
        		"item": newItem
    		});
            action.setCallback(this, function(response){
                var state = response.getState();
                if (state === "SUCCESS") {
        			var updateEvent = component.getEvent("addItem");
        			var newItem = response.getReturnValue();
                    updateEvent.setParams({ "item": newItem });
        			updateEvent.fire();
                }
            });
            $A.enqueueAction(action);
            component.set("v.newItem",{ 'sobjectType': 'Camping_Item__c',
                    'Name': '',
                    'Quantity__c': 0,
                    'Price__c': 0,
                    'Packed__c': false });		
	}
})