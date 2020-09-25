using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using Baitayonline.Logic;
using Baitayonline.Models;
using System.Web.ModelBinding;
namespace Baitayonline
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rawId = Request.QueryString["BookID"];
            int bookId;
            if (!String.IsNullOrEmpty(rawId) && int.TryParse(rawId, out bookId))
            {
                using (ShoppingCartActions usersShoppingCart = new
                ShoppingCartActions())
                {
                    usersShoppingCart.AddToCart(Convert.ToInt16(rawId));
                }
            }
            else
            {
                Debug.Fail("Toang thật rồi");
               
                throw new Exception("Toang thật rồi");
           }
            Response.Redirect("ShoppingCart.aspx");
        }
    }
}