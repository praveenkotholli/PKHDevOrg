public class ResumeCtrl{

    public Resume__c ResumeHeader{get;set;}
    public ResumeCtrl(){
        ResumeHeader = [Select Id,Name, Phone__c, Email__c, Address__c From Resume__c LIMIT 1];
    }
}