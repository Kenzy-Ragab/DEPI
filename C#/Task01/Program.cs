namespace Task01
{
    internal class Program
    {
        static void Main(string[] args)
        {
            #region Q1: Print Number
            //Console.Write("Please enter a number? ");
            //int num = Int32.Parse(Console.ReadLine());
            //Console.WriteLine($"Your number: {num}");
            #endregion

            #region Q2: Convert non-numeric to integer
            //Console.WriteLine("Please enter a word? ");
            //int n = Int32.Parse(Console.ReadLine());
            //Console.WriteLine(n);
            ////It throw a "FormatException" cause of assigning non-numeric characters into an integer!
            #endregion

            #region Q3: Operation With Float numbers
            //float num1 = 5.2f;
            //float num2 = 6.12f;
            //Console.WriteLine($"Sum of numbers: {num1 + num2}");
            ////To define a float, we must append the suffix "f"
            #endregion

            #region Q4: Extract a substring
            //Console.Write("Please enter your full name: ");
            //string name = Console.ReadLine();
            //Console.WriteLine($"Hello, {name.Substring(0, name.IndexOf(" "))}!");
            #endregion

            #region Q5: Assigning one value type variable to another
            //Console.Write("Please enter a num of X: ");
            //int x = Int32.Parse(Console.ReadLine());

            //int y = x;
            //Console.WriteLine($"X Before = {x}, Y = {y}");

            //x++;
            //Console.WriteLine($"X After = {x}, Y = {y}");

            //// The value of y didn't change because It's a value type
            //// only the value was copied, not the reference
            #endregion

            #region Q6: Assigning one reference type variable to another
            //Console.Write("Please enter a num of P1: ");
            //Point p1 = new Point(); 
            //p1.x = Int32.Parse(Console.ReadLine());

            //Point p2 = p1;
            //Console.WriteLine($"P1 Before = {p1.x}, P2 = {p2.x}");

            //p1.x++;
            //Console.WriteLine($"P1 After = {p1.x}, P2 = {p2.x}");

            //// The value of p2 changed because Point is a Reference type
            //// both variables point to the same object
            #endregion

            #region Q7: Concatenation
            //Console.Write("Please enter First name: ");
            //string Firstname = Console.ReadLine();

            //Console.Write("Please enter Last name: ");
            //string Lastname = Console.ReadLine();
            //Console.WriteLine($"Hello, {Firstname} {Lastname}!");
            #endregion

            #region Q8: Choose correct 
            //int d;
            //d = Convert.ToInt32(!(30 < 20));
            //Console.WriteLine(d);
            ////b) A value 1 will be assigned to d.
            #endregion

            #region Q9: Choose correct
            //Console.WriteLine(13 / 2 + " " + 13 % 2);

            //// d) 6 1 Because division and modulus have higher precedence
            ////than string concatenation + 
            #endregion

            #region Q10: Choose correct
            //int num = 1, z = 5;
            //if (!(num <= 0))
            //    Console.WriteLine(++num + z++ + " " + ++z);
            //else
            //    Console.WriteLine(--num + z-- + " " + --z);
            //// d) 7 7
            //// The output of condition is True so the first case printed
            #endregion

        }
    }
}
