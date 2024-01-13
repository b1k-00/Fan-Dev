using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class InformationApp : AppBase<Player>, IInformationApp, IApp<Player>
{
    public IGenericRepository<Player> _informationRepo { get; set; }

    public InformationApp(IGenericRepository<Player> informationRepo) : base(informationRepo)
    {
        _informationRepo = informationRepo;
    }

    public async Task<List<Player>> All()
    {
        List<Player> information = new List<Player>();

        try
        {
            information = (await _informationRepo.GetAllAsync()).ToList<Player>();

        }
        catch (Exception)
        {
            information = new List<Player>();
        }

        return information;
    }
}