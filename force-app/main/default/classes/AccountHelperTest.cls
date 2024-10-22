@isTest
public class AccountHelperTest {
    // Test method to verify account creation
    @isTest
    static void testCreateNewAccount() {
        // Create a unique account name
        String testAccountName = 'Test Account ' + System.currentTimeMillis();
        
        // Call the method to create an account
        Account acc = AccountHelper.createNewAccount(testAccountName);
        
        // Query the account from the database to verify it was inserted
        Account insertedAccount = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        
        // Perform assertions to verify the account was created successfully
        System.assertNotEquals(null, insertedAccount, 'The account should have been inserted.');
        System.assertEquals(testAccountName, insertedAccount.Name, 'The account name should match the expected value.');
    }
}