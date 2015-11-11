using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using WebApplication3.Models;
using System.Collections.Generic;

namespace ProductsTest
{
    [TestClass]
    public class DalTests
    {
        [TestMethod]
        public void CreateProduct_WithNewProducts_GetAllOfProductRightReturnProduct()
        {
            using (IDal dal = new Dal())
            {
                dal.CreateProduct("Boite de 1000 kapla", "img/products/", "Coffret en boit contenant 1000 kapla et un livret de construction", "3 - 6 ans", 145.76, 1);
                List<Product> products = dal.GetAllOfProducts();

                Assert.IsNotNull(products);
                Assert.AreEqual(1, products.Count);
                Assert.AreEqual("Boite de 1000 kapla", products[0].ProductName);
                Assert.AreEqual("Coffret en boit contenant 1000 kapla et un livret de construction", products[0].Description);
                Assert.AreEqual("3 à 6 ans", products[0].Level);
                Assert.AreEqual(145.76, products[0].UnitPrice);
            }
        }
    }
}
