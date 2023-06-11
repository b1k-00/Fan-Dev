using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;

namespace Persistence;

public class JuniorAssociateDesignTimeFactory : IDesignTimeDbContextFactory<TT_StatsDBContext>
{
    public TT_StatsDBContext CreateDbContext(string[] args)
    {
        IConfigurationRoot configuration = new ConfigurationBuilder()
            .AddJsonFile(Directory.GetCurrentDirectory() + "/dbsettings.json")
            .Build();

        var connectionString = configuration.GetConnectionString("JuniorAssociateDb");

        var builder = new DbContextOptionsBuilder<TT_StatsDBContext>();
        builder.UseSqlServer(connectionString);

        return new TT_StatsDBContext(builder.Options);
    }
}
