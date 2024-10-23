@IsTest
public class CalculatorTest {
    
    // Test method for addNumbers
    @IsTest
    static void testAddNumbers() {
        // Define test data
        Integer num1 = 10;
        Integer num2 = 20;
        
        // Call the method and store the result
        Integer result = Calculator.addNumbers(num1, num2);
        
        // Assert the expected result
        System.assertEquals(30, result, 'The addNumbers method should return the sum of two numbers.');
    }
}