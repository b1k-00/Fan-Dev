using Application.Interfaces;
using Domain;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    /// <summary>
    /// Abstract class to act as base for all controllers. Any shared functionality can be added to this class and
    /// used in all children.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class BaseApiAppController<T> where T : class
    {

        IApp<T> _app = null;

        // Abstract class to act as base for all controllers.
        // Shared functionality can be added and used

        public BaseApiAppController(IApp<T> app)
        {
            _app = app;
        }

        [HttpPost("Add")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<T> Create (T entity)
        {
            return await ((IApp<T>)_app).Create(entity);
        }

        [HttpPost("Update")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(string))]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<string> Update(T entity)
        {
            return await ((IApp<T>)_app).Update(entity);
        }

        [HttpPost("Delete")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(bool))]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<string> Delete(int id)
        {
            return await ((IApp<T>)_app).Delete(id);
        }

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Game>))]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<List<T>> All()
        {
            return await ((IApp<T>)_app).GetAll();
        }

        [HttpGet("{id:int}")]
        [ProducesResponseType(StatusCodes.Status200OK, Type = typeof(List<Game>))]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<T> GetEntity(int id)
        {
            return await ((IApp<T>)_app).Get(id);
        }


    }
}
