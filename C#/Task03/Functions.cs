using System;


namespace Task03
{
    internal class Functions
    {
        #region Q3: Summation and Subtraction Function
        static public (int sum, int sub) Calculate(int a, int b, int c, int d)
        {
            int summation = a + b + c + d;
            int subtraction = a - b - c - d;
            return (summation, subtraction);
        }
        #endregion

        #region Q4: Sum of Digits
        static public int SumDigits(int number)
        {
            int sum = 0;
            while (number != 0)
            {
                sum += number % 10;
                number /= 10;
            }
            return sum;
        }
        #endregion

        #region Q5: IsPrime Function
        static public bool IsPrime(int number)
        {
            if (number <= 1) return false;
            for (int i = 2; i*i <= number; i++)
            {
                if (number % i == 0) return false;
            }
            return true;
        }
        #endregion

        #region Q6: MinMaxArray Function
        static public void MinMaxArray(int[] arr, ref int min, ref int max)
        {
            if (arr.Length == 0) return;
            min = arr[0];
            max = arr[0];
            foreach (int num in arr)
            {
                if (num < min) min = num;
                if (num > max) max = num;
            }
        }
        #endregion

        #region Q7: Iterative Factorial Function
        static public long Factorial(int n)
        {
            long result = 1;
            for (int i = 1; i <= n; i++)
            {
                result *= i;
            }
            return result;
        }
        #endregion

        #region Q8: ChangeChar Function
        static public string ChangeChar(string text, int position, char newChar)
        {
            if (position < 0 || position >= text.Length) return text;
            char[] chars = text.ToCharArray();
            chars[position] = newChar;
            return new string(chars);
        }
        #endregion
    }
}
