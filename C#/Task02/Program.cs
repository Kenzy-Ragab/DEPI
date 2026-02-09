using System;
using System.Collections.Specialized;

namespace Task02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region Q1: divided by 3 and 4
            //Console.Write("Please enter a number: ");
            //int num = Convert.ToInt32(Console.ReadLine());
            //if (num % 3 == 0 && num % 4 == 0) Console.WriteLine("yes");
            //else Console.WriteLine("no");
            #endregion

            #region Q2: negative or positive
            //Console.Write("Please enter a number: ");
            //int num = Convert.ToInt32(Console.ReadLine());

            //if (num > 0) Console.WriteLine("positive");
            //else Console.WriteLine("negative");
            #endregion

            #region Q3: max and min
            //Console.Write("Please enter number1: ");
            //int num1 = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Please enter number2: ");
            //int num2 = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Please enter number3: ");
            //int num3 = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine($"Max element = {Math.Max(num1, Math.Max(num2, num3))}");
            //Console.WriteLine($"Min element = {Math.Min(num1, Math.Min(num2, num3))}");
            #endregion

            #region Q4: even or odd
            //Console.Write("Please enter a number: ");
            //int num = Convert.ToInt32(Console.ReadLine());

            //if(num%2 == 0) Console.WriteLine("even");
            //else Console.WriteLine("odd");
            #endregion

            #region Q5: vowel or consonant 
            //Console.Write("Please enter a character: ");
            //char c = char.ToLower(char.Parse(Console.ReadLine()));

            //if (c == 'a' || c == 'e' || c == 'I' || c == 'o' || c == 'u')
            //    Console.WriteLine("vowel");
            //else
            //    Console.WriteLine("consonant");
            #endregion

            #region Q6: print between 1 to number
            //Console.Write("Please enter a number: ");
            //int n = Convert.ToInt32(Console.ReadLine());
            //for (int i = 1; i <= n; i++) Console.Write(i+ " ");
            #endregion

            #region Q7: multiplication table
            //Console.Write("Please enter a number: ");
            //int n = Convert.ToInt32(Console.ReadLine());
            //for (int i = 1; i <= 12; i++) Console.Write(n * i + " ");
            #endregion

            #region Q8: all even numbers between
            //Console.Write("Please enter a number: ");
            //int n = Convert.ToInt32(Console.ReadLine());
            //for (int i=2; i<=n; i++) {
            //    if (i % 2 == 0) Console.Write(i + " ");
            //}
            #endregion

            #region Q9: print the power
            //Console.Write("Please enter number1: ");
            //int num1 = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Please enter number2: ");
            //int num2 = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine((int)Math.Pow(4,3));

            #endregion

            #region Q10: marks of five subjects
            //Console.Write("Please enter Marks of five subjects (separated By space): ");
            //int[] arr = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            //int sum = arr.Sum();
            //double avg = arr.Average();
            //decimal perc = (decimal)sum /500 *100;

            //Console.WriteLine($"Total = {sum}");
            //Console.WriteLine($"Average = {avg}");
            //Console.WriteLine($"Percentage = {perc}%");
            #endregion

            #region Q11: days in that month
            //Console.Write("Month Number: ");
            //int m = Convert.ToInt32(Console.ReadLine());
            //int[] months = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
            //Console.WriteLine($"Days in Month: {months[m]}");
            #endregion

            #region Q12: Simple Calculator
            //Console.Write("Enter num1: ");
            //int num1 = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Enter operation (+ - * /): ");
            //char op = char.Parse(Console.ReadLine());

            //Console.Write("Enter num2: ");
            //int num2 = Convert.ToInt32(Console.ReadLine());

            //if (op == '+') Console.WriteLine(num1 + num2);
            //else if (op == '-') Console.WriteLine(num1 - num2);
            //else if (op == '*') Console.WriteLine(num1 * num2);
            //else if (op == '/') {
            //    if(num2 ==0) Console.WriteLine("Undefine!");
            //    else Console.WriteLine(num1 / num2);
            //}
            //else Console.WriteLine("Wrong opeation!");
            #endregion

            #region Q13: REVERSED String
            //Console.Write("Enter a word: ");
            //string word = Console.ReadLine();
            //for (int i = 0; i < word.Length; i++) Console.Write(word[word.Length-1-i]);
            #endregion

            #region Q14: REVERSED int
            //Console.Write("Enter a numebr: ");
            //int num = Convert.ToInt32(Console.ReadLine());
            //while (num > 0) {
            //    Console.Write($"{num % 10}");
            //    num /= 10;
            //}
            #endregion

            #region Q15: prime numbers within a range
            //Console.Write("Enter starting number of range: ");
            //int st = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Enter ending number of range: ");
            //int end = Convert.ToInt32(Console.ReadLine());

            //if (st < 2) st = 2; 
            //for (int i = st; i <= end; i++) {
            //    bool isPrime = true;
            //    for (int j = 2; j * j <= i; j++) {
            //        if (i % j == 0){
            //            isPrime = false;
            //            break;
            //        }               
            //    }
            //    if(isPrime) Console.Write(i + " ");
            //}
            #endregion

            #region Q16: decimal number into binary
            //Console.Write("Enter a number: ");
            //int num = Convert.ToInt32(Console.ReadLine());
            //string binary = "";
            //while (num > 0) {
            //    binary += Convert.ToString(num % 2);
            //    num /= 2;
            //}
            //for (int i = 0; i < binary.Length; i++) Console.Write(binary[binary.Length - 1 - i]);
            #endregion

            #region Q17: Do the points lie on a single straight line?
            //Console.Write("Enter First Point (x1, y1) separated by space: ");
            //int[] point1 = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //Console.Write("Enter Second Point (x2, y2) separated by space: ");
            //int[] point2 = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //Console.Write("Enter Third Point (x3, y3) separated by space: ");
            //int[] point3 = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            ////  point1[1] point1[0]
            ////  point2[1] point2[0]
            ////  point3[1] point3[0]
            //if ((point2[1] - point1[1]) * (point3[0] - point2[0])
            // == (point3[1] - point2[1]) * (point2[0] - point1[0]))
            //    Console.WriteLine("Yes!: points lie on a single straight line.");
            //else
            //    Console.WriteLine("No!: points don't lie on a single straight line.");
            #endregion

            #region Q18: the efficiency of workers
            //Console.Write("Enter the time taken (hours): ");
            //float time = float.Parse(Console.ReadLine());

            //if (time >= 2 && time < 3) Console.WriteLine("you're highly efficient");
            //else if (time >= 3 && time < 4) Console.WriteLine("increase your speed");
            //else if (time >= 4 && time <= 5) Console.WriteLine("training to enhance your speed");
            //else if (time > 5) Console.WriteLine("leave the company");
            //else Console.WriteLine("Invalid time duration");
            #endregion

            #region Q19: identity matrix
            //Console.Write("Enter the size of identity matrix: ");
            //int n = Convert.ToInt32(Console.ReadLine());
            //int[,] matrix = new int[n, n];

            //for (int i = 0; i < n; i++)  {
            //    for (int j = 0; j < n; j++) {
            //        if (i == j) matrix[i, j] = 1;
            //        else matrix[i, j] = 0;
            //    }
            //}
            //for(int i=0; i < n; i++) {
            //    for(int j=0; j<n;j++) {
            //        Console.Write(matrix[i, j] + " ");
            //    }
            //    Console.WriteLine();
            //}
            #endregion

            #region Q20: sum of array.
            //Console.Write("Enter numbers to sum (separated by space): ");
            //int[] arr = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            //int sum = 0;

            //for(int i=0; i<arr.Length; i++){
            //    sum += arr[i];
            //}
            //Console.WriteLine(sum);
            #endregion

            #region Q21: merge two arrays of the same size
            //Console.Write("Enter numbers of array1: ");
            //int[] arr1 = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //Console.Write("Enter numbers of array2: ");
            //int[] arr2 = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //int totalSize = arr1.Length + arr2.Length;
            //int[] mergedArray = new int[totalSize];
            //for (int i = 0; i < totalSize; i++) {
            //    if (i < (totalSize / 2)) mergedArray[i] = arr1[i];
            //    else mergedArray[i] = arr2[i - totalSize / 2];
            //}

            //for (int i = 0; i < totalSize - 1; i++) {
            //    for (int j = 0; j < totalSize - 1 - i; j++) {
            //        if (mergedArray[j] > mergedArray[j + 1])
            //            (mergedArray[j], mergedArray[j + 1])
            //                = (mergedArray[j + 1], mergedArray[j]);
            //    }
            //}

            //for (int i = 0; i < totalSize; i++) Console.Write(mergedArray[i] + " ");
            #endregion

            #region Q22: frequency of each element
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();
            //int[] freq = new int[arr.Max() + 1];
            //Array.Sort(arr);

            //for(int i=0; i<arr.Length; i++) {
            //    freq[arr[i]]++;
            //}
            //for (int i = 0; i < arr.Length; i++) {
            //    int CurrentElement = arr[i];
            //    if (freq[CurrentElement]!=0)
            //        Console.WriteLine($"Frequency of {arr[i]} = {freq[arr[i]]}");

            //    freq[CurrentElement] = 0;
            //}
            #endregion

            #region Q23: max and min in array
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //int min = int.MaxValue;
            //int max = int.MinValue;
            //for (int i = 0; i < arr.Length; i++) {
            //    if (max < arr[i]) max = arr[i];
            //    if (min > arr[i]) min = arr[i];
            //}
            //Console.Write($"Max = {max}, Min = {min}");
            #endregion

            #region Q24: second max number in array
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //int max1 = int.MinValue;
            //int max2 = int.MinValue;

            //for (int i = 0; i < arr.Length; i++) {
            //    if (arr[i] > max1) {
            //        max2 = max1;
            //        max1 = arr[i];
            //    }
            //    else if (arr[i] < max1 && arr[i] > max2) {
            //        max2 = arr[i];
            //    }
            // }
            //Console.WriteLine($"Second Largest number = {max2}");
            #endregion

            #region Q25: find the longest distance between
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            
            //int maxDistance = 0;
            //for (int i = 0; i < arr.Length; i++)  {
            //    for (int j = i + 1; j < arr.Length; j++) {
            //        if (arr[i] == arr[j]) {
            //            int currentDistance = j - i - 1;

            //            if (currentDistance > maxDistance)
            //                maxDistance = currentDistance;
            //        }
            //    }
                
            //}
            //Console.WriteLine($"\nThe Longest distance is: {maxDistance}");
            #endregion

            #region Q26: reverse the order of the words
            //Console.Write("Enter Statment or Words (separated by space): ");
            //string[] words = Console.ReadLine().Split(' ').ToArray();

            //for (int i = 0; i < words.Length; i++) {
            //    Console.Write(words[words.Length - 1 - i] + " ");
            //}
            #endregion

            #region Q27: two multidimensional arrays 
            //Console.Write("Enter size of rows and columns (separated by space): ");
            //int[] rowsAndColumns = Console.ReadLine().Split(' ').Select(int.Parse).ToArray();

            //int rows = rowsAndColumns[0];
            //int cols = rowsAndColumns[1];

            //int[,] arr1 = new int[rows, cols];
            //int[,] arr2 = new int[rows, cols];

            //Console.WriteLine("Enter numbers of Array: ");
            //for(int i =0; i < rows; i++) {
            //    for (int j = 0; j < cols; j++) {
            //        Console.Write($"Enter number in row {i+1} and col {j+1}: ");
            //        arr1[i,j] = Convert.ToInt32(Console.ReadLine());
            //    }
            //    Console.WriteLine();
            //}

            //Array.Copy(arr1, arr2, arr1.Length);
            //Console.WriteLine("\nSecond Array Elements:");
            //for (int i = 0; i < arr2.GetLength(0); i++){
            //    for (int j = 0; j < arr2.GetLength(1); j++){
            //        Console.Write(arr2[i, j] + " ");
            //    }
            //    Console.WriteLine();
            //}
            #endregion

            #region Q28: Reverse 1D Array then print
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //for (int i = 0; i < arr.Length/2; i++) {
            //    (arr[i], arr[arr.Length - 1 - i]) = (arr[arr.Length - 1 - i], arr[i]);
            //}

            //Console.WriteLine("\nArray after Reversed:");
            //for (int i = 0; i < arr.Length; i++) {
            //    Console.Write(arr[i] + " ");
            //}
            #endregion
        }
    }
}
