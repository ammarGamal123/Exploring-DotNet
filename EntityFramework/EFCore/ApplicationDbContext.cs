using EFCore.Configurations;
using EFCore.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFCore
{
    public class ApplicationDbContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder options) =>
            options.UseSqlServer("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=EFCore;Integrated Security=True");

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            new BlogEntityTypeConfiguration().Configure(modelBuilder.Entity<Blog>());
            // this line is equivelant for the line below 

        //    modelBuilder.ApplyConfigurationsFromAssembly(typeof(BlogEntityTypeConfiguration).Assembly)


        }
        public DbSet<Blog> blogs { get; set; }
    }
}
