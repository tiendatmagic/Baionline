using Baitayonline.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Security.Claims;
using System.Security.Principal;

using System.Web.Security;


using Microsoft.AspNet.Identity;
using Baitayonline.Models;

using Baitayonline.Logic;
namespace Baitayonline
{
    public partial class BookList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Book> GetBooks([QueryString("id")] int? categoryId)
        {
            var _db = new Baitayonline.Models.BookContext();
            IQueryable<Book> query = _db.Books;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }
            return query;
        }
        public IQueryable<Category> GetCategories()
        {
            var _db = new Baitayonline.Models.BookContext();
            IQueryable<Category> query = _db.Categories;
            return query;
        }



    }
}