trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	
    List<Task> tasks = new List<Task>();
   
    for(Opportunity opp : Trigger.New){
        if(opp.StageName.equals('Closed Won')){
            tasks.add(new Task(WhatId=opp.Id, Subject='Follow Up Test Task'));
        }
    }
    if(!tasks.isEmpty()){
        insert tasks;
    }
}