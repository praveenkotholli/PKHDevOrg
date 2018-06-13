public with sharing class PrimaryFAChangeCtrl{
    
    private ApexPages.StandardSetController standardController;
    public list<Account> selList{get;set;}
    
    public PrimaryFAChangeCtrl(ApexPages.StandardSetController standardController){
        this.standardController = standardController;
    }

    public PageReference onLoad(){       
        list<Account>selectedAccounts = (List<Account>) standardController.getSelected();
        this.selList = [SELECT ID,Name, BillingAddress, Phone, Primary_Contact_FA__c   FROM Account WHERE ID IN: selectedAccounts];
        return null;        
    }

}