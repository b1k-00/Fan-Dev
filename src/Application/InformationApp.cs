using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class InformationApp : AppBase<Information>, IInformationApp, IApp<Information>
{
    public IGenericRepository<Information> _informationRepo { get; set; }

    public InformationApp(IGenericRepository<Information> informationRepo) : base(informationRepo)
    {
        _informationRepo = informationRepo;
    }

    public async Task<List<Information>> All()
    {
        List<Information> information = new List<Information>();

        try
        {
            information = (await _informationRepo.GetAllAsync()).ToList<Information>();

        }
        catch (Exception)
        {
            information = new List<Information>();
        }

        return information;
    }
}