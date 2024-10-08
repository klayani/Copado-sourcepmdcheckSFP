@isTest
public class AccountCreationTest {
    
    @isTest
    static void testAccountCreation() {
        // Test method to ensure account creation works as expected
        String testAccountName = 'Test Account';
        
        // Call the method to create an account
        Test.startTest();
        Account createdAccount = AccountCreation.createAccount(testAccountName);
        Test.stopTest();
        
        // Assert that the account was created successfully
        System.assertNotEquals(null, createdAccount.Id, 'Account should have an Id after being inserted.');
        System.assertEquals(testAccountName, createdAccount.Name, 'Account name should match the input name.');
    }
    
    @isTest
    static void testAccountCreationWithBlankName() {
        // Test method to check behavior when account name is blank
        Test.startTest();
        //just commenting
        try {
            AccountCreation.createAccount('');
            System.assert(false, 'Exception should have been thrown for blank account name.');
        } catch (IllegalArgumentException e) {
            System.assertEquals('Account name cannot be blank.', e.getMessage(), 'Correct exception message should be shown.');
        }
        Test.stopTest();
    }
}