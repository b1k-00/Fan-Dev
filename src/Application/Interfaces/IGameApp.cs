using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Interfaces;
public interface IGameApp
{
    Task<List<Game>> GetPastGames();

    Task<List<Game>> GetUpcomingGames();

    Task<int> GetGameCount();

    Task<List<Game>> GetGamesByPlayer();

    Task<List<Game>> GetGamesByLocation();

    Task<bool> IsGameToday();
}
