using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Dal : IDal
    {
        private BddContext bdd;

        public Dal()
        {
            bdd = new BddContext();
        }

        public List<Product> GetAllOfProducts()
        {
            return bdd.Products.ToList();
        }

        public List<Cart> GetAllOfCartItems()
        {
            return bdd.CartItems.ToList();
        }

        public void Dispose()
        {
            bdd.Dispose();
        }

        public void CreateProduct(string name, string description, string level, string imagePath, double unitPrice, int categories)
        {
            bdd.Products.Add(new Product { ProductName = name, Description = description, UnitPrice = unitPrice, ImagePath = imagePath, Level = level, CategoryID = 1 });
            bdd.SaveChanges();
        }
    }
}