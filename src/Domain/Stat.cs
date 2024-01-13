using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain;
public class Stat : BaseEntity
{
    public int Id { get; set; }

    public int GameId { get; set; }

    public int PlayerId { get; set; }


    public int Points { get; set; }

    public int Rebounds { get; set; }

    public int Assists { get; set; }

    public int Steals { get; set; }

    public int Blocks { get; set; }

    public int Fouls { get; set; }


}
