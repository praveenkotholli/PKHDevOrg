public class AccountTriggerHandler{

public static void CreateAccounts(List<Account> AccList){

    for(Account Acc : AccList){
        Acc.ShippingState = Acc.BillingState;
        
    }

}

}