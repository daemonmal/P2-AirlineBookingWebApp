using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelRoomsController : ControllerBase
    {
        private readonly airlineDBContext _context = new airlineDBContext();

        // GET: api/HotelRooms
        [HttpGet]
        public async Task<ActionResult<IEnumerable<HotelRoom>>> GetHotelRoomsList()
        {
            var hotelRooms = new List<HotelRoom>();
            if (_context.HotelRooms == null)
            {
                return NotFound();
            }
            return await _context.HotelRooms.ToListAsync();
        }

        // GET by roomId, hotelId, Price, and room numb
    }
}
