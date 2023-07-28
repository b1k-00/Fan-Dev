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

    public async Task<List<Game>> All()
    {
        List<Game> games = new List<Game>();

        try
        {
            games = (await _gameRepo.GetAllAsync()).ToList<Game>();

        }
        catch (Exception)
        {
            games = new List<Game>();
            
        }

        return games;
    }

    //public async Task<List<Game>> GetGames()
    //{
    //    List<Game> games = new List<Game>();

    //    try
    //    {
    //        games = (await _gameRepo.GetAllAsync()).ToList<Game>();
    //    }
    //    catch (Exception ex)
    //    {
    //        games = new List<Game> { };
    //    }

    //    return games;
    //}

    //public Task<List<Game>> GetGame(int GameId)
    //{
    //    throw new NotImplementedException();
    //}

    //public async Task<bool> IsGameToday(DateTime dateTime)
    //{
    //    DateTime today = DateTime.Now;

    //    Game game = new Game();

    //    bool result = false;


    //    if (game != null && game.Date == DateTime.Now)
    //    {
    //        return result;

    //    }

    //    return result;
    //}

    //public int GetGameCount()
    //{
    //    List<Game> games = new List<Game>();

    //    int gameCount = 0;

    //    foreach (Game game in games)
    //    {
    //        if (game.GameId != null && game.Date != null && game.Location != null)
    //        {
    //            gameCount++;

    //        }

    //    }

    //    return gameCount;
    //}

    //public Task<List<Game>> GetPastGames()
    //{
    //    throw new NotImplementedException();
    //}

    //public Task<List<Game>> GetUpcomingGames()
    //{
    //    throw new NotImplementedException();
    //}

    //public Task<List<Game>> GetGamesByPlayer()
    //{
    //    throw new NotImplementedException();
    //}

    //public Task<List<Game>> GetGamesByLocation()
    //{
    //    throw new NotImplementedException();
    //}
}
