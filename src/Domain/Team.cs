using System;

namespace Domain;

public class Team : BaseEntity
{
    public int Id { get; set; }
    public string TeamName { get; set; }
    public string Division { get; set; }

    public string Arena { get; set; }
}
