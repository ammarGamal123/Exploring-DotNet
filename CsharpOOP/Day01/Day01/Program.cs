using System.Diagnostics;

internal class Program
{
    public static void Main(string[] args)
    {

        Stopwatch stopwatch1 = new Stopwatch();
        stopwatch1.Start();
        for (int i = 0; i <= 10000000; i++)
        {
            short s1 = 100;
            short s2 = 100;
            short s3 = 100;
        }
        stopwatch1.Stop();
        Console.WriteLine($"short took : {stopwatch1.ElapsedMilliseconds} MS");
        Stopwatch stopwatch2 = new Stopwatch();
        stopwatch2.Start();
        for (int i = 0; i <= 10000000; i++)
        {
            decimal s1 = 100;
            decimal s2 = 100;
            decimal s3 = 100;
        }
        stopwatch2.Stop();
        Console.WriteLine($"decimal took : {stopwatch2.ElapsedMilliseconds} MS");


    }
}