using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain;
public class Stat : BaseEntity
{

    public int PlayerId { get; set; }

    public int GameId { get; set; }

    public int ORebounds { get; set; }

    public int DRebounds { get; set; }

    public int Rebounds { get; set; }

    public int Assists { get; set; }

    public int Steals { get; set; }

    public int Blocks { get; set; }

    public int Minutes { get; set; }

    public int Efficiency { get; set; }


}
