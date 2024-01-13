using Application;
using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class InformationController : BaseApiAppController<Player>
{
    public IInformationApp _informationApp = null;

    public InformationController(IInformationApp informationApp) : base((IApp<Player>)informationApp)
    {

        _informationApp = informationApp;

    }

    [HttpGet("All")]
    [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Player>))]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<List<Player>> All()
    {
        return await ((_informationApp.All()));
    }
}