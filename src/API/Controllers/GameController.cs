using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers;

public class GameController 
{
    IGameApp _gameApp = null;



    [HttpPost("IsGameToday")]
    [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
    [ProducesResponseType(StatusCodes.Status404NotFound)]

    public async Task<bool> IsGameToday(DateTime dateTime)
    {
        return await _gameApp.IsGameToday(dateTime);

    }


}
