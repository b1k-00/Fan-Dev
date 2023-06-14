using Application.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    /// <summary>
    /// Abstract class to act as base for all controllers. Any shared functionality can be added to this class and
    /// used in all children.
    /// </summary>
    [Route("api/[controller]")]
    [ApiController]
    public class BaseApiController<T> where T : class
    {

        IApp<T> _app = null;

        // Abstract class to act as base for all controllers.
        // Shared functionality can be added and used

        public BaseApiController(IApp<T> app)
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


    }
}
