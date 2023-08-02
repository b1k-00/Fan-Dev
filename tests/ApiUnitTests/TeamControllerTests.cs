using Application.Interfaces;
using Application.Persistence;
using Domain;
using FluentAssertions.Execution;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace ApiUnitTests;
public class TeamAppTests
{
    ITeamApp _teamApp = null;

    List<Team> teams = new List<Team>()
    {
        new Team
        {
            Id = 1,
            TeamName = "Al Manama",
            TeamColor = "South-East",
            TeamArena = "Lions Den"
            
        }
    };

    Team newTeam = new Team()
    {
        Id = 1,
        TeamName = "Boston Coyotes",
        TeamColor = "Slime",
        TeamArena = "Global"
    };

    public TeamAppTests()
    {
        var teamRepo = new Mock<IGenericRepository<Team>>();

        teamRepo.Setup(u => u.UpdateAsync(It.IsAny<Team>()));

        teamRepo.Setup(x => x.GetAsync(It.IsAny<int>())).ReturnsAsync(() => newTeam);

        regionRepo.Setup(x => x.GetAllAsync()).ReturnsAsync(() => _regions);

        designStudioRepo.Setup(x => x.GetAllAsync()).ReturnsAsync(() => _designStudios);

        designStudioRepo.Setup(x => x.AddAsync(It.IsAny<DesignStudio>())).
            Callback<DesignStudio>(x => _designStudios.Add(x)).ReturnsAsync(() => _designStudios[0]);

        regionRepo.Setup(x => x.DeleteAsync(It.IsAny<int>())).Callback<int>(x =>
        {

            Region deletedRegion = null;

            foreach (Region region in _regions)
            {

                if (region.Id == x)
                {

                    deletedRegion = region;
                }
            }
            _regions.Remove(deletedRegion);

        }).Returns(Task.CompletedTask);

        designStudioRepo.Setup(x => x.DeleteAsync(It.IsAny<int>())).Callback<int>(x =>
        {

            DesignStudio deletedStudio = null;

            foreach (DesignStudio designStudio in _designStudios)
            {

                if (designStudio.Id == x)
                {

                    deletedStudio = designStudio;
                }
            }
            _designStudios.Remove(deletedStudio);

        }).Returns(Task.CompletedTask);


        _teamApp = new teamRepo(teamRepo.Object);


    }

    [Fact]


    [Fact]

    public async Task GetAllTeams()
    {

    }
}
