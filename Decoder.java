import java.util.Scanner;

public class Decoder {
    public static void main(String[] args) {
    	Scanner scanner = new Scanner(System.in);
    	
    	System.out.println("GIVE ME 50 DOLLARS, and give me a message to encode");  	
    	String encoded = scanner.nextLine();
    	
    	System.out.println("give me a number now ok");
    	int key = scanner.nextInt();
    	
    	String encrypted = "";
    	
    	for(int potato = 0; potato < encoded.length(); potato++) {
    		char letter = encoded.charAt(potato);
    		char encryptedChar = (char)(letter + key);
    		
    		encrypted += encryptedChar;

    	}
    	
    	System.out.println(encrypted);
        
    	scanner.close();
    }
}