using Application.Interfaces;
using Application.Persistence;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application;
public class AppBase<T> : IApp<T> where T : BaseEntity
{
    IGenericRepository<T> _repo = null;

    public AppBase(IGenericRepository<T> repository)
    {
        _repo = repository;
    }
    public Task<T> Create(T newEntity)
    {
        throw new NotImplementedException();
    }

    public Task<string> Delete(int id)
    {
        throw new NotImplementedException();
    }

    public Task<T> Get(int id)
    {
        throw new NotImplementedException();
    }

    public Task<List<T>> GetAll()
    {
        throw new NotImplementedException();
    }

    public Task<T> Update(T entity)
    {
        throw new NotImplementedException();
    }
}
