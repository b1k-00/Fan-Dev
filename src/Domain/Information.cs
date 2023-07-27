using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain;
public class Information : BaseEntity
{

    public int TeamId { get; set; }

    public string FirstName { get; set; }

    public string LastName { get; set; }

    public int JerseyNumber { get; set; }

    public string Origin { get; set; }


}
