namespace EFCore
{
    class Program
    {
        static void Main(string[] args) {

            var _context = new ApplicationDbContext();


            _context.SaveChanges();

            


            Console.ReadKey();
        }
    }
}