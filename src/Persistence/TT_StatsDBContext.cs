using Domain;
using Microsoft.EntityFrameworkCore;

namespace Persistence;

public class TT_StatsDBContext : DbContext
{

    public TT_StatsDBContext(DbContextOptions<TT_StatsDBContext> options) : base(options)
    {
    }

    /// <summary>
    /// This lets us apply any custom configurations from this assembly. We want this so we can define
    /// any data definitions in a configuration file and have it applied.
    /// </summary>
    /// <param name="modelBuilder"></param>
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(typeof(TT_StatsDBContext).Assembly);
    }

    #region DbSets

    public DbSet<Team> Teams { get; set; }
    public DbSet<Game> Games { get; set; }

    public DbSet<Information> Info { get; set; }


    #endregion
}
