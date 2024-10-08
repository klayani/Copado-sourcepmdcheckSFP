public class AccountCreation {
    // Method to create an account
    public static Account createAccount(String accountName) {
        // Validate account name
        if (String.isBlank(accountName)) {
            throw new IllegalArgumentException('Account name cannot be blank.');
        }
        //just commenting
        // Create new account
        Account acc = new Account();
        acc.Name = accountName;
        
        // Insert account in the database
        insert acc;
        
        // Return the created account
        return acc;
    }
}