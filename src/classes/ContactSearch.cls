public with sharing class ContactSearch {
	
	public static List<Contact> searchForContacts(String a, String b){

		List<Contact> SOQLSearch = [SELECT ID, FirstName FROM Contact WHERE LastName =: a AND mailingpostalcode=:b ];  
		return SOQLSearch;
	}
}