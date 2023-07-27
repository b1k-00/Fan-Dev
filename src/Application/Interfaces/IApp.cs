using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Interfaces;
public interface IApp<T> where T : class
{
    Task<T> Get(int id);

    Task<List<T>> GetAll();

    Task<string> Update(T entity);

    Task<string> Delete(int id);

    Task<T> Create(T newEntity);
}
