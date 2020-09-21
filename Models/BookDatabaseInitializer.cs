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
 Description = "300 Years Before A Game of Thrones (A Targaryen History) (A Song of Ice and Fire).",
        ImagePath = "b1.jpg",
UnitPrice = 1100000f,
CategoryID = 1
        },
 //book 2
 new Book
 {
 BookID = 2,
BookName = "VINTAGE FULTON'S PLAYING CARDS LIKE NEW",
Description = "In this authoritative and engrossing full-scale biography, Walter Isaacson, " + "bestselling author of Einstein and Steve Jobs, shows how the most fascinating of " + "America's founders helped define our national character.",
 ImagePath = "b2.jpg",
 UnitPrice = 400000f,
CategoryID = 2
     },
 //book 3
 new Book
 {
 BookID = 3,
BookName = "BRUSH PLAYING CARDS LIKE NEW",
 Description = "During Barack Obama's two terms, Pete Souza was with the President " + "during more crucial moments than anyone else--and he photographed them all",
 ImagePath="b3.jpeg",
 UnitPrice = 500000f,
CategoryID = 2
 },

 //book 4
 new Book
 {
 BookID = 4,
BookName = "SQUEEZERS PLAYING CARDS LIKE NEW",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b4.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
 //book 5
 new Book
 {
 BookID = 5,
BookName = "FONTAINE GREEN PLAYING CARDS LIKE NEW",
Description = "Stephen Covey’s cherished classic commemorates thetimeless wisdom and " + "power of the 7 Habits book, and does it in a highly readable and understandable, infographics format.",
 ImagePath= "b5.jpg",
UnitPrice = 280000f,
CategoryID = 4
 },
 //book 6
 new Book
 {
 BookID = 6,
BookName = "KING SLAYER PLAYING CARDS LIKE NEW",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b6.jpg",
UnitPrice = 300000f,
CategoryID = 3
 },
  //book 7
 new Book
 {
 BookID = 7,
BookName = "ALPHABET PLAYING CARDS",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b7.png",
UnitPrice = 280000f,
CategoryID = 1
 },
  //book 8
 new Book
 {
 BookID = 8,
BookName = "1987 JAN PLAYING CARDS",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b8.jpg",
UnitPrice = 250000f,
CategoryID = 2
 },
  //book 9
 new Book
 {
 BookID = 9,
BookName = "MONO X PLAYING CARDS LIKE NEW",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b9.jpg",
UnitPrice = 370000f,
CategoryID = 3
 },
  //book 10
 new Book
 {
 BookID = 10,
BookName = "SMOKE AND MIRRORS V6 PLAYING CARDS LIKE NEW",
 Description = "One hundred thousand years ago, at least six different species of " +  "humans inhabited Earth. Yet today there is only one—homo sapiens. " + "What happened to the others? And what may happen to us?",
ImagePath="b10.jpg",
UnitPrice = 360000f,
CategoryID = 3
 },


 };
 return books;
 }
 }

}