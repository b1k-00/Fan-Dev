using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Game : BaseEntity
    {

        public int GameId { get; set; }

        public DateTime Date { get; set; }

        public string Location { get; set; }
    }


}
