using Application;
using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class StatController : BaseApiAppController<Stat>
{
    public IStatApp _statApp = null;

    public StatController(IStatApp statApp) : base((IApp<Stat>)statApp)
    {

        _statApp = statApp;

    }

    [HttpGet("All")]
    [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Stat>))]
    [ProducesResponseType(StatusCodes.Status404NotFound)]
    public async Task<List<Stat>> All()
    {
        return await ((_statApp.All()));
    }
}