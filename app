import java.util.Scanner;

public class App {

    Scanner sc = new Scanner(System.in);
    private int n;
    private int arr1[];
    private int arr2[];

    private void readArray1() {
        System.out.println("Please enter size of array to be sorted: ");
        n = sc.nextInt();

        arr1 = new int[n];
        for (int i = 0; i < n; i++) {
            System.out.println("Please Enter Index no. " + (i + 1) + " : ");
            arr1[i] = sc.nextInt();
        }
    }

    private void readArray2() {
        System.out.println("Please enter array to be reversed size: ");
        n = sc.nextInt();

        arr2 = new int[n];

        for (int i = 0; i < n; i++) {
            System.out.println("Please Enter Index no. " + (i + 1) + " : ");
            arr2[i] = sc.nextInt();
        }
    }

    private void printArray1() {
        System.out.print("\n");
        System.out.print("{");
        for (int i = 0; i < n; i++) {
            System.out.print(arr1[i] + " ");
        }
        System.out.println("}");
    }

    private void printArray2() {
        System.out.print("\n");
        System.out.print("{");
        for (int i = 0; i < n; i++) {
            System.out.print(arr2[i] + " ");
        }
        System.out.println("}");
    }

    public void sort1() {
        System.out.println("______________________________________\n");
        System.out.println("--> Array to be sorted\n");
        readArray1();
        System.out.print("Array elements before sorting:");
        printArray1();
        for (int i = 0; i < arr1.length; i++) {
            for (int j = i + 1; j < arr1.length; j++) {
                int x;
                if (arr1[i] > arr1[j]) {

                    x = arr1[i];
                    arr1[i] = arr1[j];
                    arr1[j] = x;
                }

            }

        }
        System.out.print("Array elements after sorting:");
        printArray1();
    }

    public void reverseArray() {
        System.out.println("______________________________________\n");
        System.out.println("--> Array to be reversed\n");
        readArray2();
        System.out.print("Array elements before sorting:");
        printArray2();

        int a[] = new int[arr2.length];
        int j = a.length;
        System.out.println("Array elements after reversing:");
        for (int i = 0; i < (a.length); i++) {
            a[j - 1] = arr2[i];
            j = j - 1;

        }
        System.out.print("{");
        for (int i = 0; i < a.length; i++) {
            System.out.print(a[i] + " ");

        }
        System.out.println("}");

    }

    public static void main(String[] args) {

        App a = new App();

        a.sort1();
        a.reverseArray();
    }
}
