using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HotelReservationsController : ControllerBase
    {
        private readonly airlineDBContext _context = new airlineDBContext();

        //public HotelReservationsController(airlineDBContext context)
        //{
        //    _context = context;
        //}

        // GET: api/HotelReservations
        [HttpGet]
        public async Task<ActionResult<IEnumerable<HotelReservation>>> GetAllHotelReservations()
        {
            if (_context.HotelReservations == null)
            {
                return NotFound();
            }
            return await _context.HotelReservations.ToListAsync();
        }

        // GET: api/HotelReservations/5
        [HttpGet("{id}")]
        public async Task<ActionResult<HotelReservation>> GetHotelReservationById(int id)
        {
            if (_context.HotelReservations == null)
            {
                return NotFound();
            }
            var hotelReservation = await _context.HotelReservations.FindAsync(id);

            if (hotelReservation == null)
            {
                return NotFound();
            }

            return hotelReservation;
        }

        // PUT: api/HotelReservations/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateHotelReservation(int id, HotelReservation hotelReservation)
        {
            if (id != hotelReservation.ReservationId)
            {
                return BadRequest();
            }

            _context.Entry(hotelReservation).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HotelReservationExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/HotelReservations
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<HotelReservation>> NewHotelReservation(HotelReservation hotelReservation)
        {
            if (_context.HotelReservations == null)
            {
                return Problem("Entity set 'airlineDBContext.HotelReservations'  is null.");
            }
            _context.HotelReservations.Add(hotelReservation);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (HotelReservationExists(hotelReservation.ReservationId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetHotelReservation", new { id = hotelReservation.ReservationId }, hotelReservation);
        }

        // DELETE: api/HotelReservations/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteHotelReservation(int id)
        {
            if (_context.HotelReservations == null)
            {
                return NotFound();
            }
            var hotelReservation = await _context.HotelReservations.FindAsync(id);
            if (hotelReservation == null)
            {
                return NotFound();
            }

            _context.HotelReservations.Remove(hotelReservation);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool HotelReservationExists(int id)
        {
            return (_context.HotelReservations?.Any(e => e.ReservationId == id)).GetValueOrDefault();
        }
    }
}
