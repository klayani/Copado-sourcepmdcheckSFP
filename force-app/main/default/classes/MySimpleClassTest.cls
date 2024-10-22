@isTest
public class MySimpleClassTest {
    @isTest
    static void testGetGreetingWithName() {
        // Create an instance of MySimpleClass
        MySimpleClass myClass = new MySimpleClass();
        
        // Call the method with a name
        String result = myClass.getGreeting('John');
        
        // Assert the expected result
        System.assertEquals('Hello, John!', result, 'Greeting message should be correct.');
    }
    
    @isTest
    static void testGetGreetingWithoutName() {
        // Create an instance of MySimpleClass
        MySimpleClass myClass = new MySimpleClass();
        
        // Call the method without a name (blank)
        String result = myClass.getGreeting('');
        
        // Assert the expected result
        System.assertEquals('Hello, Guest!', result, 'Greeting message should be correct for a blank name.');
    }
    
    @isTest
    static void testGetGreetingWithNull() {
        // Create an instance of MySimpleClass
        MySimpleClass myClass = new MySimpleClass();
        
        // Call the method with a null value
        String result = myClass.getGreeting(null);
        
        // Assert the expected result
        System.assertEquals('Hello, Guest!', result, 'Greeting message should be correct for a null name.');
    }
}