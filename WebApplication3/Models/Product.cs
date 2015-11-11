using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public String ProductName { get; set; }
        public String Description { get; set; }
        public String ImagePath { get; set; }
        public Double UnitPrice { get; set; }
        public int CategoryID { get; set; }
        public String Level { get; set; }
    }
}