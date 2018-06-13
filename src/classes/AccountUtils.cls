public class AccountUtils{

public static list<Account> accountsByState(String State){

    return [Select Id,Name from Account Where BillingState =: State];
}

}