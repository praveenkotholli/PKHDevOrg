({
	packItem  : function(component, event, helper) {
        var item = component.get("v.item");
        if(!item.Packed__c)
        	item.Packed__c = false;
        else
            item.Packed__c = true;
        component.set("v.item", item);
	}
})