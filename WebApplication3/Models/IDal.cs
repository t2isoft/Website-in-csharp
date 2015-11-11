using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication3.Models
{
    public interface IDal : IDisposable
    {
        void CreateProduct(string name, string description, string level, string ImagePath, double unitPrice, int categories);
        List<Product> GetAllOfProducts();

        List<Cart> GetAllOfCartItems();
    }
}
