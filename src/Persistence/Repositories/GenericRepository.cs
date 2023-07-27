using Application.Persistence;
using Microsoft.EntityFrameworkCore;

namespace Persistence.Repositories;

public class GenericRepository<T> : IGenericRepository<T> where T : class
{
    private readonly FanDevDBContext _dbContext;

    public GenericRepository(FanDevDBContext dbContext)
    {
        _dbContext = dbContext;
    }

    public async Task<T> AddAsync(T entity)
    {
        await _dbContext.AddAsync(entity);
        await _dbContext.SaveChangesAsync();
        return entity;
    }

    public async Task DeleteAsync(int id)
    {
        T found = _dbContext.Find<T>(id);
        //since I will be returning <T> as a type i declared it there
        //instead of using var

        if (found != null)
        {
            _dbContext.Remove(found);
            await _dbContext.SaveChangesAsync();
        }
    }

    public async Task<IReadOnlyCollection<T>> GetAllAsync()
    {
        return await _dbContext.Set<T>().ToListAsync();
    }

    public async Task<T> GetAsync(int id)
    {
        return await _dbContext.Set<T>().FindAsync(id);
    }

    public async Task UpdateAsync(T entity)
    {
        _dbContext.Update(entity);
        await _dbContext.SaveChangesAsync();
    }
}
