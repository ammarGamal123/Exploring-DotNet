namespace EFCore
{
    class Program
    {
        static void Main(string[] args) {

            var _context = new ApplicationDbContext();

            Employee employee = new Employee {Name = "Mido"};

            _context.Employees.Add(employee);
            _context.SaveChanges();

            Console.ReadKey();
        } 
    }
}