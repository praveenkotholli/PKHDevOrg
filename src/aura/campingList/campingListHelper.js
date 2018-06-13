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
                	var items = JSON.parse(JSON.stringify(component.get("v.items")));
   					items.push(response.getReturnValue());
                    component.set("v.items", items);
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