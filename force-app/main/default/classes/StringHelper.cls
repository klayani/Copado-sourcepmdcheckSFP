public class StringHelper {
    // Method to reverse a string
    public static String reverseString(String inputString) {
        String reversedString = '';
        for (Integer i = inputString.length() - 1; i >= 0; i--) {
            reversedString += inputString.substring(i, i + 1);
        }
        return reversedString;
    }
}