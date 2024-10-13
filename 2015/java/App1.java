import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class App1 {
    public static void main(String[] args) {
        try {
            File myObj = new File("./2015/1.txt");
            Scanner myReader = new Scanner(myObj);
            int result = 0;
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();

                for (int i = 0; i < data.length(); i++) {
                    if (result == -1) {
                        System.out.println(i);
                        break;
                    }

                    if (data.charAt(i) == '(') {
                        result++;
                    } else if (data.charAt(i) == ')') {
                        result--;
                    }
                }
            }
            myReader.close();
            System.out.println(result);
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }
}