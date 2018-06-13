/*
ABCD Comment New changhe CRM 004 TEST TEST 
TWo
THREE

*/
public with sharing class AccountController {
    @AuraEnabled
    public static List<Account> findAll() {
    return [SELECT id, name, Location__Latitude__s, Location__Longitude__s
            FROM Account
            WHERE Location__Latitude__s != NULL AND Location__Longitude__s != NULL LIMIT 50];
    }
    
   /*
     SQUAD 1 Code CF1
     */


//gsadjasgd
    /*
     SQUAD 2 Code CF2
     */

 
    /*
     SQUAD 3 Code CF3 XYZ
     */ 
    
    //ABCD
    
}