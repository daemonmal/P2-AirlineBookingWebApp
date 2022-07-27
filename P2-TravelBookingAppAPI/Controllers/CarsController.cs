using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarsController : ControllerBase
    {
        private readonly airlineDBContext _context = new airlineDBContext();

        // GET: api/Cars
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Car>>> GetCarsList()
        {
            var cars = new List<Car>();
            if (_context.Cars == null)
            {
                return NotFound();
            }
            return await _context.Cars.ToListAsync();
        }

        // GET by carId, AgencyId, model, and price
    }
}
