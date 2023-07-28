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
}