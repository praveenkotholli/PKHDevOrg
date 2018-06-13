public with sharing class AccountHandler {
	
	public static Account insertNewAccount(String AcocuntName){
		
		try{
			Account a = new Account();
			a.name = AcocuntName;	
			insert a;
			return a;
			}catch(Exception e){
				return null;
			}
		
	}
}