using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Baitayonline.Models;
namespace Baitayonline.Logic
{
    public class AddBooks
    {
        public bool AddBook(string BookName, string BookDesc, string BookPrice, string
       BookCategory, string BookImagePath)
        {
            var myBook = new Book();
            myBook.BookName = BookName;
            myBook.Description = BookDesc;
            myBook.UnitPrice = (float?)Convert.ToDouble(BookPrice);
            myBook.ImagePath = BookImagePath;
            myBook.CategoryID = Convert.ToInt32(BookCategory);
            using (BookContext _db = new BookContext())
            {
                // Thêm sách đến DB.
                _db.Books.Add(myBook);
                _db.SaveChanges();
            }
            // Thêm sách thành công.
            return true;
        }
    }
}
