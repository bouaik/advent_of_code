import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class App2 {
    public static void main(String[] args) {
        try {
            File myObj = new File("./2015/2.txt");
            Scanner myReader = new Scanner(myObj);
            int result = 0;
            while (myReader.hasNextLine()) {
                String data = myReader.nextLine();

                String[] myDataArray = data.split("x");

                int[] myDataInt = new int[myDataArray.length];
                for (int i = 0; i < myDataArray.length; i++) {
                    myDataInt[i] = Integer.parseInt(myDataArray[i]);
                }

                int minInt = min(new int[] { myDataInt[0] * myDataInt[1], myDataInt[0] * myDataInt[2],
                        myDataInt[2] * myDataInt[1] });
                int surface = 2
                        * (myDataInt[0] * myDataInt[1] + myDataInt[0] * myDataInt[2] + myDataInt[2] * myDataInt[1])
                        + minInt;

                result += surface;
            }
            System.out.println(result);

            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
    }

    public static int min(int[] array) {
        int min = array[0];
        for (int i = 0; i < array.length; i++) {
            if (array[i] < min)
                min = array[i];
        }
        return min;
    }
}