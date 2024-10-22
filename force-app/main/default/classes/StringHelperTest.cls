@isTest
public class StringHelperTest {
    // Test method to verify string reversal
    @isTest
    static void testReverseString() {
        // Step 1: Define the input string and expected reversed string
        String inputString = 'Salesforce';
        String expectedReversedString = 'ecrofelaS';
        
        // Step 2: Call the reverseString method
        String reversedString = StringHelper.reverseString(inputString);
        
        // Step 3: Perform assertion to verify the reversed string matches the expected value
        System.assertEquals(expectedReversedString, reversedString, 'The reversed string should match the expected value.');
    }
}