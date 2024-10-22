public class AccountHelper {
    // Method to create a new account
    public static Account createNewAccount(String accountName) {
        Account acc = new Account();
        acc.Name = accountName;
        insert acc;
        return acc;
    }
}