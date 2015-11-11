using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace WebApplication3.Models
{
    public class BddContext : DbContext
    {
       public DbSet<Product> Products { get; set;}

       public System.Data.Entity.DbSet<WebApplication3.Models.Cart> CartItems { get; set; }

        public BddContext()
            : base("WingtipToys")
        {
             
        }

        
    }
}