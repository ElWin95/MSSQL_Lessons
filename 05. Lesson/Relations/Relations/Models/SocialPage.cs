using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Relations.Models
{
    internal class SocialPage
    {
        [Key, ForeignKey(nameof(Author))]
        public int Id { get; set; }
        public string Ins { get; set; }
        public string Facebook { get; set; }
        //public int AuthorId { get; set; }
        //public Author Author { get; set; }
    }
}
