public with sharing class ContactAndLeadSearch {

	public static List<List< SObject>> searchContactsAndLeads(String a) {	
		List<List<SObject>> searchList = [FIND :a  IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
		return searchList;
	}
}