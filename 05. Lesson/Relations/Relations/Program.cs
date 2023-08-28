// See https://aka.ms/new-console-template for more information
using Relations.Models;
Console.WriteLine("Hello, World!");

//monolit microservices

//n-tier, onion
//models=>class ===>table

//SocialPage socialPage = new ();
//socialPage.Id = 1;
//socialPage.Facebook = "";
//Console.WriteLine(socialPage.Author.Name);

//onetoone
//Author author = new ();
//author.Id = 1;
//author.Name = "Filankes";

//SocialPage socialPage = new ();
//socialPage.Id = 1;
//socialPage.Ins = "";
//socialPage.Facebook = "";

//onetomany

//Book book = new ();
//book.Id = 1;
//book.Name = "nameee";
////book.Images = new List<Image>();
//Image image = new ();
//image.Id = 1;
//image.Url = "Lorem.png";
//image.BookId = 1;

//Image image2 = new();
//image2.Id = 1;
//image2.Url = "Lorem.png";
//image2.BookId = 1;

//book.Images= new List<Image> { image, image2 };

//manytomany

Book book = new ();
book.Id = 1;

Genre genre = new ();
genre.Id = 1;

BookGenre bookGenre = new ();
bookGenre.Id = 1;
bookGenre.BookId = 1;
bookGenre.GenreId = 1;
book.BookGenres= new List<BookGenre> { bookGenre};