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
 Description = "Bộ bài màu vàng sang trọng đem lại cảm giác giàu sang cho người sử dụng",
 ImagePath = "b1.jpg",
UnitPrice = 1100000f,
CategoryID = 1
        },
 //book 2
 new Book
 {
 BookID = 2,
BookName = "VINTAGE FULTON'S PLAYING CARDS LIKE NEW",
Description = "Bộ bài màu vàng óng ánh đem lại cảm giác đầy quyền lực và huyền bí",
 ImagePath = "b2.jpg",
 UnitPrice = 400000f,
CategoryID = 2
     },
 //book 3
 new Book
 {
 BookID = 3,
BookName = "BRUSH PLAYING CARDS LIKE NEW",
Description = "Bộ bài được thiết kế với màu úp màu đen kèm theo 3 màu chủ đạo xếp xung quanh nhau",
 ImagePath="b3.jpeg",
 UnitPrice = 500000f,
CategoryID = 2
 },

 //book 4
 new Book
 {
 BookID = 4,
BookName = "SQUEEZERS PLAYING CARDS LIKE NEW",
Description = "Bộ bài với màu đen xám là chủ đạo tạo cảm giác bí ẩn và huyền bí",
ImagePath="b4.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
 //book 5
 new Book
 {
 BookID = 5,
BookName = "FONTAINE GREEN PLAYING CARDS LIKE NEW",
Description = "Bộ bài được chế tạo từ thiên nhiên dành cho những ai yêu thích màu xanh",
 ImagePath= "b5.jpg",
UnitPrice = 280000f,
CategoryID = 4
 },
 //book 6
 new Book
 {
 BookID = 6,
BookName = "KING SLAYER PLAYING CARDS LIKE NEW",
Description = "Bộ bài hình trái dâu tây cực đẹp",
ImagePath="b6.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
  //book 7
 new Book
 {
 BookID = 7,
BookName = "ALPHABET PLAYING CARDS",
Description = "Bộ bài gồm các hình hoa tuyết bên trong kèm theo đó là những chữ cái bí ẩn",
ImagePath="b7.png",
UnitPrice = 280000f,
CategoryID = 1
 },
  //book 8
 new Book
 {
 BookID = 8,
BookName = "1987 JAN PLAYING CARDS",
Description = "Bộ bài được thiết kế theo hướng cũ từ năm 1978 nhưng mang lại cảm giác cực kỳ sang trọng",
ImagePath="b8.jpg",
UnitPrice = 250000f,
CategoryID = 2
 },
  //book 9
 new Book
 {
 BookID = 9,
BookName = "MONO X PLAYING CARDS LIKE NEW",
Description = "Bộ bài màu đen với đường kẻ sọc bí ẩn",
ImagePath="b9.jpg",
UnitPrice = 370000f,
CategoryID = 3
 },
  //book 10
 new Book
 {
 BookID = 10,
BookName = "SMOKE AND MIRRORS V6 PLAYING CARDS LIKE NEW",
Description = "Bộ bài màu nâu và hình khói",
ImagePath="b10.jpg",
UnitPrice = 360000f,
CategoryID = 3
 },


 };
 return books;
 }
 }

}