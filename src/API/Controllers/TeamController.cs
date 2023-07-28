using Application;
using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class TeamController : BaseApiAppController<Team>
{
    public ITeamApp _teamapp = null;

    public TeamController(ITeamApp teamApp) : base((IApp<Team>)teamApp)
    {

        _teamapp = teamApp;

    }

    [HttpGet("All")]
    [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Team>))]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<List<Team>> All()
    {
        return await ((_teamapp.All())); 
    }
}