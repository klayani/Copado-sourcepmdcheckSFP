public class ContactHelper {
    // Method to create a new contact for a given account
    public static Contact createNewContact(String firstName, String lastName, Id accountId) {
        Contact con = new Contact();
        con.FirstName = firstName;
        con.LastName = lastName;
        con.AccountId = accountId;
        insert con;
        return con;
    }
}