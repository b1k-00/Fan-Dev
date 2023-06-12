using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class GameApp : AppBase<Game>, IGameApp, IApp<Game>
{
    public IGenericRepository<Game> _gameRepo { get; set; }

    public GameApp(IGenericRepository<Game> gameRepo) : base(gameRepo)
    {
        _gameRepo = gameRepo;
    }

    public Task<int> GetGameCount()
    {
        throw new NotImplementedException();
    }

    public Task<List<Game>> GetPastGames()
    {
        throw new NotImplementedException();
    }

    public Task<List<Game>> GetUpcomingGames()
    {
        throw new NotImplementedException();
    }

    public Task<List<Game>> GetGamesByPlayer()
    {
        throw new NotImplementedException();
    }

    public Task<List<Game>> GetGamesByLocation()
    {
        throw new NotImplementedException();
    }

    public Task<bool> IsGameToday()
    {
        throw new NotImplementedException();
    }
}
