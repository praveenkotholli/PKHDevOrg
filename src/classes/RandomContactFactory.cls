public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(integer j, string n){
        list<Contact> cList = new List<Contact>();
        for(integer i=0;i<j;i++){
            cList.add(new Contact(FirstName=String.valueOf(i),LastName=n));
        }
        return cList;
    }
}