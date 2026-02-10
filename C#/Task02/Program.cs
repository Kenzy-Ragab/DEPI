using System;
using System.Collections.Generic;
using System.Linq;

namespace Task02
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region Q1 - Divide by 3 and 4
            //Console.Write("Enter number: ");
            //int num = int.Parse(Console.ReadLine());
            //Console.WriteLine((num % 3 == 0 && num % 4 == 0) ? "Yes" : "No");
            #endregion

            #region Q2 - Positive or Negative
            //Console.Write("Enter number: ");
            //int num = int.Parse(Console.ReadLine());
            //Console.WriteLine(num < 0 ? "negative" : "positive");
            #endregion

            #region Q3 - Max and Min
            //Console.Write("Enter 3 integers: ");
            //int[] num = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            //Console.WriteLine($"max element = {num.Max()}");
            //Console.WriteLine($"min element = {num.Min()}");
            #endregion

            #region Q4 - Even or Odd
            //Console.Write("Enter number: ");
            //int num = int.Parse(Console.ReadLine());
            //Console.WriteLine(num % 2 == 0 ? "Even" : "Odd");
            #endregion

            #region Q5 - Vowel or Consonant
            //Console.Write("Enter character: ");
            //char inputChar = char.ToLower(char.Parse(Console.ReadLine()));
            //char[] vowels = { 'a', 'e', 'i', 'o', 'u' };
            //Console.WriteLine(Array.Exists(vowels, v => v == inputChar) ? "vowel" : "consonant");
            #endregion

            #region Q6 - Numbers from 1 to N
            //Console.Write("Enter N: ");
            //int n = int.Parse(Console.ReadLine());

            //for (int i = 1; i <= n; i++)
            //    Console.Write(i + (i == n ? "" : " "));
            #endregion

            #region Q7 - Multiplication Table
            //Console.Write("Enter number for table: ");  
            //int n = int.Parse(Console.ReadLine());
            //for (int i = 1; i <= 12; i++)
            //    Console.Write($"{n * i} ");
            //Console.WriteLine();
            #endregion

            #region Q8 - Even Numbers
            //Console.Write("Enter limit: ");
            //int n = int.Parse(Console.ReadLine());

            //for (int i = 2; i <= n; i += 2)
            //Console.Write($"{i} ");
            //Console.WriteLine();
            #endregion

            #region Q9 - Power 
            //Console.WriteLine("Enter Base then Exponent:");
            //int baseNum = int.Parse(Console.ReadLine());
            //int expNum = int.Parse(Console.ReadLine());

            //double result = Math.Pow(baseNum, expNum);
            //Console.WriteLine(result);
            #endregion

            #region Q10 - Marks Stats 
            //Console.Write("Enter marks of 5 subjects: ");
            //int[] marks = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //float sum = marks.Sum();
            //Console.WriteLine($"Total marks = {sum}");
            //Console.WriteLine($"Average Marks = {sum / 5}");
            //Console.WriteLine($"Percentage = {sum / 500 * 100}%");
            #endregion

            #region Q11 - Days in Month
            //int[] daysInMonths = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
            //Console.Write("Month Number: ");

            //int month = int.Parse(Console.ReadLine());
            //if (month >= 1 && month <= 12)
            //    Console.WriteLine($"Days in Month: {daysInMonths[month - 1]}");
            #endregion

            #region Q12 - Simple Calculator
            //Console.WriteLine("Enter 1st number, Operator, 2nd number: ");
            //double d1 = double.Parse(Console.ReadLine());
            //char op = char.Parse(Console.ReadLine());
            //double d2 = double.Parse(Console.ReadLine());

            //switch (op) {
            //    case '+': Console.WriteLine(d1 + d2); break;
            //    case '-': Console.WriteLine(d1 - d2); break;
            //    case '*': Console.WriteLine(d1 * d2); break;
            //    case '/': Console.WriteLine(d2 != 0 ? d1 / d2 : "Error"); break;
            //}
            #endregion

            #region Q13 - Reverse String
            //Console.Write("Enter String: ");
            //string str = Console.ReadLine();
            //char[] charArray = str.ToCharArray();

            //Array.Reverse(charArray);
            //Console.WriteLine(new string(charArray));
            #endregion

            #region Q14 - Reverse Integer
            //Console.Write("Enter Integer: ");
            //int val = int.Parse(Console.ReadLine());
            //int reversed = 0;

            //while (val > 0)
            //{
            //    reversed = reversed * 10 + (val % 10);
            //    val /= 10;
            //}
            //Console.WriteLine(reversed);
            #endregion

            #region Q15 - Prime Range
            //Console.Write("Start: ");
            //int st = int.Parse(Console.ReadLine());
            //Console.Write("End: ");
            //int end = int.Parse(Console.ReadLine());

            //for (int i = st; i <= end; i++) {
            //    if (i < 2)  continue;
            //    bool prime = true;
            //    for (int j = 2; j * j <= i; j++) {
            //        if (i % j == 0) {
            //            prime = false;
            //            break;
            //        }
            //    }

            //    if (prime) Console.Write($"{i} ");
            //}
            //Console.WriteLine();
            #endregion

            #region Q16 - Decimal to Binary
            //Console.Write("Decimal: ");
            //int n = int.Parse(Console.ReadLine());
            //string binary = "";

            //while (n > 0) {
            //    binary = (n % 2) + binary;
            //    n /= 2;
            //}
            //Console.WriteLine(binary);
            #endregion

            #region Q17 - Straight Line Points
            //Console.WriteLine("Points (x1,y1, x2,y2, x3,y3): ");
            //int x1 = int.Parse(Console.ReadLine()), y1 = int.Parse(Console.ReadLine());
            //int x2 = int.Parse(Console.ReadLine()), y2 = int.Parse(Console.ReadLine());
            //int x3 = int.Parse(Console.ReadLine()), y3 = int.Parse(Console.ReadLine());

            ////x1[0] y1[0]
            ////x2[0] y2[0]
            ////x3[0] y3[0]

            //if ((y2 - y1) * (x3 - x2) == (y3 - y2) * (x2 - x1))
            //    Console.WriteLine("On straight line");
            //else
            //    Console.WriteLine("Not On straight line");
            #endregion

            #region Q18 - Efficiency
            //Console.Write("Hours: ");
            //double hours = double.Parse(Console.ReadLine());

            //if (hours >=2 && hours < 3) Console.WriteLine("highly efficient");
            //else if (hours < 4) Console.WriteLine("increase speed");
            //else if (hours <= 5) Console.WriteLine("training to enhance your speed");
            //else Console.WriteLine("leave company");
            #endregion

            #region Q19 - Identity Matrix
            //Console.Write("Enter size of Identity Matrix: ");
            //int n = int.Parse(Console.ReadLine());
            //for (int i = 0; i < n; i++){
            //    for (int j = 0; j < n; j++)
            //        Console.Write(i == j ? "1 " : "0 ");
            //    Console.WriteLine();
            //}
            #endregion

            #region Q20 - Array Sum
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //Console.WriteLine(arr.Sum());
            #endregion

            #region Q21 - Merge Sorted
            //Console.Write("Enter Size of array: ");
            //int size = int.Parse(Console.ReadLine());
            //int[] arr1 = new int[size];
            //int[] arr2 = new int[size];

            //Console.Write("Enter numbers of array1: ");
            //arr1 = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //Console.Write("Enter numbers of array2: ");
            //arr2 = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //int[] Merged = arr1.Concat(arr2).OrderBy(x => x).ToArray();
            //Console.WriteLine(string.Join(" ", Merged));
            #endregion

            #region Q22 - Frequency of elements
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            //Array.Sort(arr);

            //for (int i = 0; i < arr.Length; i++) {
            //    int count = 1;
            //    for (int j = i + 1; j < arr.Length; j++) {
            //        if (arr[i] == arr[j]) {
            //            count++;
            //            i++; 
            //        }
            //        else break; 
            //    }
            //    Console.WriteLine($"Frequency of {arr[i]} =  {count}");
            //}
            #endregion

            #region Q23 - Max and Min in Array
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //Console.WriteLine($"Max: {arr.Max()}, Min: {arr.Min()}");
            #endregion

            #region Q24 - Second Largest
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //Console.WriteLine(arr.Distinct().OrderByDescending(x => x).Skip(1).First());
            #endregion

            #region Q25 - Longest Distance 
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //int maxDistance = 0;
            //for (int i = 0; i < arr.Length; i++) {
            //    for (int j = i + 1; j < arr.Length; j++) {
            //        if (arr[i] == arr[j]){
            //            int distance = j - i - 1; 
            //            if (distance > maxDistance)
            //                maxDistance = distance;
            //        }
            //    }
            //}
            //Console.WriteLine(maxDistance);
            #endregion

            #region Q26 - Reversd Words 
            //Console.Write("Enter Words: ");
            //string[] words = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries);

            //Array.Reverse(words);
            //Console.WriteLine(string.Join(" ", words));
            #endregion

            #region Q27 - Copy 2D Array
            //Console.Write("Enter rows and columns: ");
            //int[] size = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            //int rows = size[0];
            //int cols = size[1];

            //int[,] Matrix = new int[rows, cols];
            //int[,] CopiedMartrix = new int[rows, cols];

            //for (int i = 0; i < rows; i++){
            //    for (int j = 0; j < cols; j++){
            //        Console.Write($"Enter number in row{i + 1} and col{j + 1}: ");
            //        Matrix[i, j] = int.Parse(Console.ReadLine());
            //    }
            //    Console.WriteLine();
            //}

            //Array.Copy(Matrix, CopiedMartrix, Matrix.Length);
            //Console.WriteLine("Copied Array:");
            //for (int i = 0; i < rows; i++) {
            //    for(int j=0; j< cols; j++) {
            //        Console.Write(CopiedMartrix[i, j] + " ");
            //    }
            //    Console.WriteLine();
            //}
            #endregion

            #region Q28 - Reverse Array Print
            //Console.Write("Enter numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();

            //Array.Reverse(arr);
            //for (int i = 0; i <arr.Length; i++)
            //    Console.Write($"{arr[i]} ");
            #endregion
        }
    }
}