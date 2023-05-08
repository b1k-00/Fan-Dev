using Domain;
using Microsoft.EntityFrameworkCore;

namespace Persistence;

public class TaskBuildsDBContext : DbContext
{

    public TaskBuildsDBContext(DbContextOptions<TaskBuildsDBContext> options) : base(options)
    {
    }

    /// <summary>
    /// This lets us apply any custom configurations from this assembly. We want this so we can define
    /// any data definitions in a configuration file and have it applied.
    /// </summary>
    /// <param name="modelBuilder"></param>
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(typeof(TaskBuildsDBContext).Assembly);
    }

    #region DbSets

    public DbSet<User> Users { get; set; }
    public DbSet<UserTask> Tasks { get; set; }

    #endregion
}
