public class MySimpleClass {
    // Method to return a greeting message
    public String getGreeting(String name) {
        if (String.isNotBlank(name)) {
            return 'Hello, ' + name + '!';
        } else {
            return 'Hello, Guest!';
        }
    }
}