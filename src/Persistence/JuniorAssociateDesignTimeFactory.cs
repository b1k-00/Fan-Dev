using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;

namespace Persistence;

public class JuniorAssociateDesignTimeFactory : IDesignTimeDbContextFactory<TaskBuildsDBContext>
{
    public TaskBuildsDBContext CreateDbContext(string[] args)
    {
        IConfigurationRoot configuration = new ConfigurationBuilder()
            .AddJsonFile(Directory.GetCurrentDirectory() + "/dbsettings.json")
            .Build();

        var connectionString = configuration.GetConnectionString("JuniorAssociateDb");

        var builder = new DbContextOptionsBuilder<TaskBuildsDBContext>();
        builder.UseSqlServer(connectionString);

        return new TaskBuildsDBContext(builder.Options);
    }
}
