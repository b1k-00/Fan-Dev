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
    public async Task<T> Create(T newEntity)
    {
        return await _repo.AddAsync(newEntity);
    }

    public async Task<string> Delete(int id)
    {
        await _repo.DeleteAsync(id);

        var entities = await _repo.GetAllAsync();

        var result = "Failed to Delete";
        
        foreach(T entity in entities)
        {
            if (entity.Id == id)
            {
                await _repo.DeleteAsync(id);
                result = "Deleted Successfully";
            }
        }

        return result;
    }

    public async Task<T> Get(int id)
    {
        return await _repo.GetAsync(id); 
    }

    public async Task<List<T>> GetAll()
    {
        List<T> result = new List<T>();

        try
        {
            result = (await _repo.GetAllAsync()).ToList();
        }

        catch (Exception ex)
        {
            result = new List<T>();
        }

        return (await _repo.GetAllAsync()).ToList();
    }

    public async Task<string > Update(T entity)
    {
        var result = "Successfully Updated";

        try
        {
           await _repo.UpdateAsync(entity);
        }

        catch (Exception ex)
        {
            result = "Update Failure";
        }

        return result;
    }
}
