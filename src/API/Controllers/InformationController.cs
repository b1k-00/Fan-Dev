using Application;
using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class InformationController : BaseApiAppController<Information>
{
    public IInformationApp _informationApp = null;

    public InformationController(IInformationApp informationApp) : base((IApp<Information>)informationApp)
    {

        _informationApp = informationApp;

    }

    [HttpGet("All")]
    [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Information>))]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<List<Information>> All()
    {
        return await ((_informationApp.All()));
    }
}