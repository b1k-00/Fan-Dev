using System;

namespace Domain;

public class Team : BaseEntity
{
    public string TeamName { get; set; }
    public string TeamArena { get; set; }

    public string TeamColor { get; set; }
}
