﻿using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class TeamApp : AppBase<Team>, ITeamApp, IApp<Team>
{
    public IGenericRepository<Team> _teamRepo { get; set; }

    public TeamApp(IGenericRepository<Team> teamRepo) : base(teamRepo)
    {
        _teamRepo = teamRepo;
    }
}