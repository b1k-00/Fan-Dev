using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class StatApp : AppBase<Stat>, IStatApp, IApp<Stat>
{
    public IGenericRepository<Stat> _statRepo { get; set; }

    public StatApp(IGenericRepository<Stat> statRepo) : base(statRepo)
    {
        _statRepo = statRepo;
    }

    public async Task<List<Stat>> All()
    {
        List<Stat> stats = new List<Stat>();

        try
        {
            stats = (await _statRepo.GetAllAsync()).ToList<Stat>();

        }
        catch (Exception)
        {
            stats = new List<Stat>();
        }

        return stats;
    }

    public async Task<List<Stat>> GetStatsByPlayerId(int playerId)
    {
        return (await _statRepo.GetAllAsync()).Where(x => x.PlayerId == playerId).ToList<Stat>();
    }

    public async Task<List<Stat>> GetStatsByGameId(int gameId)
    {
        return (await _statRepo.GetAllAsync()).Where(x => x.GameId == gameId).ToList<Stat>();
    }

    //public async Task<List<User>> GetUserByDesignStudio(int designStudioId)
    //{
    //    try
    //    {
    //        var test0 = _userRepo.GetAllAsync().Result;
    //        var test1 = (await _userRepo.GetAllAsync()).Where(x => x.DesignStudiosId == designStudioId).ToList<User>();
    //        var test3 = (await _userRepo.GetAllAsync()).ToList<User>();
    //    }
    //    catch (Exception ex)
    //    {
    //        var stop = 1;
    //    }

    //    return (await _userRepo.GetAllAsync()).Where(x => x.DesignStudiosId == designStudioId).ToList<User>();
    //}
}