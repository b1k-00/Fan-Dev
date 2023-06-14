using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;

namespace Persistence;

public class JuniorAssociateDesignTimeFactory : IDesignTimeDbContextFactory<FanDevDBContext>
{
    public FanDevDBContext CreateDbContext(string[] args)
    {
        IConfigurationRoot configuration = new ConfigurationBuilder()
            .AddJsonFile(Directory.GetCurrentDirectory() + "/dbsettings.json")
            .Build();

        var connectionString = configuration.GetConnectionString("JuniorAssociateDb");

        var builder = new DbContextOptionsBuilder<FanDevDBContext>();
        builder.UseSqlServer(connectionString);

        return new FanDevDBContext(builder.Options);
    }
}
