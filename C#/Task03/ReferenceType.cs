using System;

namespace Task03
{
    internal class ReferenceType
    {
        static public void ByVal(Student s)
        {
            s.name = "Kenzy";
            s = new Student { name = "Jory" };
        }

        static public void ByRef(ref Student s)
        {
            s.name = "Kenzy";
            s = new Student { name = "Jory" };
        }
    }
}
