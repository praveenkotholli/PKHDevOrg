trigger OrderEventTrigger on Order_Event__e (after insert) {
    List<Task> tasks = new List<Task>();
    //Id userId = 'praveenkhari@sfdcdev.com';
    //User pkhUser = [SELECT Id FROM User WHERE UserName =: userId LIMIT 1];
     
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c  == true) {
            Task t = new Task();
        	t.Subject = 'Follow up on shipped order ' + event.Order_Number__c ;
        	t.OwnerId = '00537000000IpqYAAS';
            t.Priority = 'Medium '; 
            t.Status = 'New';
            tasks.add(t);
        } 
   }
    insert tasks;
}