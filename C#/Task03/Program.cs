using System.Xml.Linq;

namespace Task03
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region Q1: Value type parameters
            /*
             * In Case of Value type the modification not affect unless By Ref
             */
            //int x = 7;
            //Console.WriteLine($"Original X = {x}");

            //ValueType.ByVal(x);
            //Console.WriteLine($"X After ByVal = {x}");

            //ValueType.ByRef(ref x);
            //Console.WriteLine($"X After ByRef = {x}");
            #endregion

            #region Q2: Reference type parameters
            /*
             * In Case of Reference type modificaion affect whether copy reference and orignal reference
             * but when create 'new' just by ref affect 
             */
            //Student s = new Student { name = "Kenzy" };
            //Console.WriteLine($"Orignal Name of student = {s.name}");

            //ReferenceType.ByVal(s);
            //Console.WriteLine($"Name of student After ByVal = {s.name}");

            //ReferenceType.ByRef(ref s);
            //Console.WriteLine($"Name of student After ByRef = {s.name}");
            #endregion

            #region Q3: Summation and Subtraction Function
            //Console.Write("Enter 4 numbers: ");
            //int[] numbers = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            //Console.WriteLine("\nSummation and Subtraction:");
            //Console.WriteLine(Functions.Calculate(numbers[0], numbers[1], numbers[2], numbers[3]));
            #endregion

            #region Q4: Sum of Digits
            //Console.Write("Enter a number: ");
            //int n = Convert.ToInt32(Console.ReadLine());

            //Console.Write($"Sum digits of number {n} = {Functions.SumDigits(n)} ");
            #endregion

            #region Q5: IsPrime Function
            //Console.Write("Enter a number: ");
            //int p = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine(Functions.IsPrime(p) ? "Prime" : "Not prime");
            #endregion

            #region Q6: MinMaxArray Function
            //Console.Write("Enter a numbers of array: ");
            //int[] arr = Console.ReadLine().Split(' ', StringSplitOptions.RemoveEmptyEntries).Select(int.Parse).ToArray();
            //int min = 0, max = 0;
            //Functions.MinMaxArray(arr, ref min, ref max);
            //Console.WriteLine($"Min Element = {min}, Max Element = {max}");
            #endregion

            #region Q7: Iterative Factorial Function
            //Console.Write("Enter number: ");
            //int f = Convert.ToInt32(Console.ReadLine());
            //Console.WriteLine($"Factorial of {f} is: {Functions.Factorial(f)}");
            #endregion

            #region Q8: ChangeChar Function
            //Console.Write("Enter Text: ");
            //string text = Console.ReadLine();

            //Console.Write("Enter Position you want to change (0 based): ");
            //int pos = Convert.ToInt32(Console.ReadLine());

            //Console.Write("Enter new character: ");
            //char newChar = char.Parse(Console.ReadLine());

            //Console.WriteLine($"Text after repalcing '{newChar}' is {Functions.ChangeChar(text, pos, newChar)}");
            #endregion
        }
    }
}
