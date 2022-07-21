using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelsController : ControllerBase
    {
        private readonly airlineDBContext _context = new airlineDBContext();

        // GET: api/Hotels
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Hotel>>> GetHotelsList()
        {
            if (_context.Hotels == null)
            {
                return NotFound();
            }
            return await _context.Hotels.ToListAsync();
        }
    }
}
