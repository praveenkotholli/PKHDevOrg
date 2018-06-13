@RestResource(urlMapping='/PKHAccount')
global with sharing class RestPublicAccount {
    
    
    /*
        Sample URL: https://praveenkh-developer-edition.na31.force.com/services/apexrest/PKHAccount?AccountID=00137000008f3MQ
        Method: GET
    */
    @HttpGet
    global static Account doGet(){
        String AccID = RestContext.request.params.get('AccountID');
        try{
        Account Acc = [Select Id, Name From Account Where Id=:AccID];
        return acc;
        }catch(Exception e){
            system.debug('#Exception :'+e);
        }
        return null;
    }
    
    
    
    /*
        Sample URL: https://praveenkh-developer-edition.na31.force.com/services/apexrest/PKHAccount?Name=Account100&Number=100001
        Method: POST
    */       
    @HttpPost
    global static Account doPost(){
        String AccName = RestContext.request.params.get('Name');
        String AccNumber = RestContext.request.params.get('Number');
        try{
            Account acc = new Account(name=AccName, AccountNumber=AccNumber);
            insert acc;
            return acc;
        }catch(Exception e){
            system.debug('#Exception :'+e);
        }
        return null;
    }
        
    
}