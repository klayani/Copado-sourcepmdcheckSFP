@isTest
public class ContactHelperTest {
    // Test method to verify contact creation
    @isTest
    static void testCreateNewContact() {
        // Step 1: Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        // Step 2: Create a Contact associated with the test Account
        String testFirstName = 'John';
        String testLastName = 'Doe';
        Contact con = ContactHelper.createNewContact(testFirstName, testLastName, testAccount.Id);
        
        // Step 3: Query the contact from the database to verify it was inserted
        Contact insertedContact = [SELECT Id, FirstName, LastName, AccountId FROM Contact WHERE Id = :con.Id];
        
        // Step 4: Perform assertions to verify the contact was created correctly
        System.assertNotEquals(null, insertedContact, 'The contact should have been inserted.');
        System.assertEquals(testFirstName, insertedContact.FirstName, 'The contact first name should match the expected value.');
        System.assertEquals(testLastName, insertedContact.LastName, 'The contact last name should match the expected value.');
        System.assertEquals(testAccount.Id, insertedContact.AccountId, 'The contact should be associated with the test account.');
    }
}