﻿using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistence.Repositories;
public class TeamRepository : GenericRepository<Team>
{
    private readonly FanDevDBContext _dbContext;

    public TeamRepository(FanDevDBContext dbContext) : base(dbContext)
    {
        _dbContext = dbContext;
    }
}
