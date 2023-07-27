using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class GameController : BaseApiAppController<Game>
{
    public IGameApp _gameApp = null;

    public GameController(IGameApp gameApp) : base((IApp<Game>)gameApp) 
    {

        _gameApp = gameApp; 

    }


    //[HttpGet("GetGames")]
    //[ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Game>))]
    //[ProducesResponseType(StatusCodes.Status404NotFound)]

    //public async Task<List<Game>> GetGames()
    //{
    //    return await _gameApp.GetGames();

    //}

    //[HttpPost("IsGameToday")]
    //[ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
    //[ProducesResponseType(StatusCodes.Status404NotFound)]

    //public async Task<bool> IsGameToday(DateTime dateTime)
    //{
    //    return await _gameApp.IsGameToday(dateTime);

    //}




}
