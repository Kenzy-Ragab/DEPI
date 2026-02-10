using System;

namespace Task03
{
    internal class ValueType
    {
        static public void ByVal(int x)
        {
            x = 100;
        }

        static public void ByRef(ref int x)
        {
            x = 100;
        }
    }
}
