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
}