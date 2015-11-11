using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.Models;
using System.Web.Script.Serialization;

namespace WebApplication3.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetListProduct()
        {
            using (IDal dal = new Dal())
            {
                List<Product> getListProduct = dal.GetAllOfProducts();
                string output = new JavaScriptSerializer().Serialize(getListProduct);
                output = "{ \"books\" :  " + output + "}";
                return Content(output);
            }
        }

        public ActionResult AddProduct()
        {
          
           using (IDal dal = new Dal())
            {
               if(Request.HttpMethod == "POST")
               {
                   string name = Request.Form["name"];
                   string description = Request.Form["description"];
                   string level = Request.Form["level"];
                   //string imagePath = Request.Form["imagePath"];
                   string imagePath = "img/Products";
                   string unitPriceString = Request.Form["price"];
                   string categoriesString = Request.Form["categories"];
                   Console.WriteLine(unitPriceString);

                   double unitPrice = Double.Parse(unitPriceString);

                   int categories = Convert.ToInt32(categoriesString);

                    dal.CreateProduct(name, description,  level,  imagePath, unitPrice, categories);
                    return View();
               }
               else
               {
                   string error = "error";
                   string output = new JavaScriptSerializer().Serialize(error);
                   return Content(error);
               }
              
            }
        }

       /* public ActionResult DeletProduct()
        {

        }

        public ActionResult UpdateProduct()
        {

        } */

    }
}