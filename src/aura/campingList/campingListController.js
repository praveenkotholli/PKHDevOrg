({
    doInit: function(component, event, helper){
        var action = component.get("c.getItems");
        action.setCallback(this, function(response){
        	var state = response.getState();    
            if (state === "SUCCESS"){
                component.set("v.items", response.getReturnValue());
            }else{
                console.log("Failed with state: " + state);
            }
        });
        $A.enqueueAction(action);
    },
    
    clickCreateItem: function(component, event, helper) {
        var validItem = component.find('campingForm').reduce(function (validSoFar, inputCmp) {
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        if(validItem){
            var newItem = component.get("v.newItem");
			helper.createItem(component, newItem);
        }
        
    },
    
    handleAddItem: function(component, event, helper) {
		var item = event.getParam("item");
    	var action = component.get("c.saveItem");
        action.setParams({
        	"item": item
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
        
    }
})