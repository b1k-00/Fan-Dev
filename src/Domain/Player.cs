﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain;
public class Player : BaseEntity
{
    public int Id { get; set; }

    public string PlayerName { get; set; }

    public int TeamId { get; set; }

    public int JerseyNumber { get; set; }


}
