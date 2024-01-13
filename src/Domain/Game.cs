using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Game : BaseEntity
    {
        public int Id { get; set; }

        public string Location { get; set; }
        public DateTime Date { get; set; }

        public int HomeTeamId { get; set; }

        public int AwayTeamId { get; set; }

        public string FinalScore { get; set; }

    }


}
