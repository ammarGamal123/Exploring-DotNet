namespace Day02
{
    class Program
    {
        public static void Main(string[] args)
        {
            #region Literals in C#

            int integer = 1234;
            int hexa = 0x123f;
            int binary = 0b1111;

            Console.WriteLine($"Decimal Literal {integer}");
            Console.WriteLine($"Hexa-Decimal Literal {hexa}");
            Console.WriteLine($"Binary Literal {binary}\n");


            int a = 1000; //Integer
            uint b = 1000U; //Unsigned Integer
            long c = 1000L; //Long
            ulong d = 1000UL; //Unsigned Long

            Console.WriteLine($"Integer Literal: {a}");
            Console.WriteLine($"Unsigned Integer Literal: {b}");
            Console.WriteLine($"Long Literal: {c}");
            Console.WriteLine($"Unsigned Long Literal: {d}\n");
            
            double a1 = 10.15; //By Default Floating Point Literal is double
            //Float Literal
            float b1 = 100.72F; //Suffix with F
            //Double Literal
            double c1 = 1.45D; //Suffix with D
            //Decimal Literal
            decimal d1 = 1.44M; //Suffix with M

            Console.WriteLine($"Double Literal: {a1}");
            Console.WriteLine($"Float Literal: {b1}");
            Console.WriteLine($"Double Literal: {c1}");
            Console.WriteLine($"Decimal Literal: {d1}\n");


            char ch1 = 'A';
            Console.WriteLine($"Single Quote: {ch1} \n");

            char ch2 = '\u0041';
            Console.WriteLine($"Unicode: {ch2} \n");

            Console.WriteLine("Escape : Hello \nDotNet\tTutorials\n");


            string str1 = "Dot Net Tutorials";
            string str2 = @"Dot Net Tutorials";

            string str3 = "Dot\nNet\tTutorials";
            string str4 = @"Dot\nNet\tTutorials";

            Console.WriteLine($"str1 = {str1}");
            Console.WriteLine($"str2 = {str2}");
            Console.WriteLine($"str3 = {str3}");
            Console.WriteLine($"str4 = {str4}");

            #endregion


            int numInt = 1500;
            Type numIntType = numInt.GetType();

            double numDouble = numInt;
            Type numDoubleType = numDouble.GetType();

            Console.WriteLine($"numInt Value : {numInt}");
            Console.WriteLine($"numInt Type : {numIntType}");
            Console.WriteLine($"the size : {sizeof(int)} Bytes\n");


            Console.WriteLine($"numDouble Value : {numDouble}");
            Console.WriteLine($"numDouble Type : {numDoubleType}");
            Console.WriteLine($"the size : {sizeof(double)} Bytes\n");

            // Explicit casting not safe and may cause some errors
            /*double numDouble2 = 1243.1243;

            int numInt2 = numDouble2;

            Console.WriteLine("Original Double Value" + numDouble2);
            Console.WriteLine("Converted int Value" + numInt);*/

            double numDouble2 = 1.23;

            int numInt2 = (int)numDouble2;

            Console.WriteLine($"Original double value {numDouble2}");
            Console.WriteLine($"Converted int value {numInt2}\n");

            int n = 100;
            byte byteNum = (byte)n;
            Console.WriteLine("validByteNum: " + byteNum + '\n');

            int n2 = 500;
            byte byteNum2 = (byte)n2;
            Console.WriteLine("lossByteNum2 :" + byteNum2 + '\n');


            string str = "100";
            int i1 = Convert.ToInt32(str);

            double d3 = 123.45;
            int i2 = Convert.ToInt32(d3);

            float f2 = 45.678f;
            string str2 = Convert.ToString(f2);
            Console.WriteLine($"Original value str: {str} and converted to i1 {i1}");
            Console.WriteLine($"Original value d3: {d3} and converted to i2 {i2}");
            Console.WriteLine($"Original value f2: {f2} and converted to str2 {str2}\n\n");


            string s = "100";
            int i = int.Parse(s);

            Console.WriteLine($"Original String value: {s} and converted to int value {i}");

            string s2 = "True";
            bool b1 = bool.Parse(s2);

            Console.WriteLine($"Original String value: {s2} and converted to bool value {b1}\n");

            string str3 = "Hello";

            bool check = int.TryParse(str3, out int i3);

            if (check)
            {
                Console.WriteLine($"Try Parse succedded to convert into {i3}");
            }
            else
            {
                Console.WriteLine($"Try Parse Failed to convert {str3}");
            }
        }
    }
}
