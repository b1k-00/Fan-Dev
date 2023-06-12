using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistence.Repositories;
public class GameRepository : GenericRepository<Game>
{
    private readonly TT_StatsDBContext _dbContext;

    public GameRepository(TT_StatsDBContext dbContext) : base(dbContext)
    {
        _dbContext = dbContext;
    }
}
