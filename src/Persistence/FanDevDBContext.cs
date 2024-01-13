using Domain;
using Microsoft.EntityFrameworkCore;

namespace Persistence;

public class FanDevDBContext : DbContext
{

    public FanDevDBContext(DbContextOptions<FanDevDBContext> options) : base(options)
    {
    }

    /// <summary>
    /// This lets us apply any custom configurations from this assembly. We want this so we can define
    /// any data definitions in a configuration file and have it applied.
    /// </summary>
    /// <param name="modelBuilder"></param>
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(typeof(FanDevDBContext).Assembly);
    }

    #region DbSets

    /// <summary>
    /// may need to update below with correct names
    /// </summary>
    public DbSet<Team> Team { get; set; }
    public DbSet<Game> Game { get; set; }
    public DbSet<Stat> Stat { get; set; }

    public DbSet<Player> Information { get; set; }


    #endregion
}
