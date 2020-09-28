using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Baitayonline.Models
{
    public class BookDatabaseInitializer : DropCreateDatabaseAlways<BookContext>
    {
        protected override void Seed(BookContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetBooks().ForEach(p => context.Books.Add(p));
        }
        private static List<Category> GetCategories()
        {
            var categories = new List<Category> {
 new Category
 {
 CategoryID = 1,
 CategoryName = "Phổ biến nhất"
 },
 new Category
 {
 CategoryID = 2,
CategoryName = "Sản phẩm bán chạy"
 },
 new Category{
 CategoryID = 3,
 CategoryName = "Sản phẩm khuyến mãi"
 },
 new Category
 {
 CategoryID = 4,
CategoryName = "Chỉ dành cho bạn"
 }
 };
            return categories;
        }
        private static List<Book> GetBooks()
        {
            var books = new List<Book> {
 //book 1 
 new Book
 {
 BookID = 1,
 BookName = "TRIDENT DELUXE PLAYING CARDS",
 Description = "No name",
 ImagePath = "b1.jpg",
UnitPrice = 1100000f,
CategoryID = 1
        },
 //book 2
 new Book
 {
 BookID = 2,
BookName = "VINTAGE FULTON'S PLAYING CARDS LIKE NEW",
Description = "No name",
 ImagePath = "b2.jpg",
 UnitPrice = 400000f,
CategoryID = 2
     },
 //book 3
 new Book
 {
 BookID = 3,
BookName = "BRUSH PLAYING CARDS LIKE NEW",
Description = "No name",
 ImagePath="b3.jpeg",
 UnitPrice = 500000f,
CategoryID = 2
 },

 //book 4
 new Book
 {
 BookID = 4,
BookName = "SQUEEZERS PLAYING CARDS LIKE NEW",
Description = "No name",
ImagePath="b4.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
 //book 5
 new Book
 {
 BookID = 5,
BookName = "FONTAINE GREEN PLAYING CARDS LIKE NEW",
Description = "No name",
 ImagePath= "b5.jpg",
UnitPrice = 280000f,
CategoryID = 4
 },
 //book 6
 new Book
 {
 BookID = 6,
BookName = "KING SLAYER PLAYING CARDS LIKE NEW",
Description = "No name",
ImagePath="b6.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
  //book 7
 new Book
 {
 BookID = 7,
BookName = "ALPHABET PLAYING CARDS",
Description = "No name",
ImagePath="b7.png",
UnitPrice = 280000f,
CategoryID = 1
 },
  //book 8
 new Book
 {
 BookID = 8,
BookName = "1987 JAN PLAYING CARDS",
Description = "No name",
ImagePath="b8.jpg",
UnitPrice = 250000f,
CategoryID = 2
 },
  //book 9
 new Book
 {
 BookID = 9,
BookName = "MONO X PLAYING CARDS LIKE NEW",
Description = "No name",
ImagePath="b9.jpg",
UnitPrice = 370000f,
CategoryID = 3
 },
  //book 10
 new Book
 {
 BookID = 10,
BookName = "SMOKE AND MIRRORS V6 PLAYING CARDS LIKE NEW",
Description = "No name",
ImagePath="b10.jpg",
UnitPrice = 360000f,
CategoryID = 3
 },


 };
 return books;
 }
 }

}