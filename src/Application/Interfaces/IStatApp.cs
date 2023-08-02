using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Interfaces;
public interface IStatApp
{
    Task<List<Stat>> All();

    Task<List<Stat>> GetStatsByPlayerId (int playerId);

    Task<List<Stat>> GetStatsByGameId (int gameId);

}
