using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CarReservationsController : ControllerBase
    {
        private readonly airlineDBContext _context = new airlineDBContext();

        //public CarReservationsController(airlineDBContext context)
        //{
        //    _context = context;
        //}

        // GET: api/CarReservations
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CarReservation>>> GetAllCarReservations()
        {
            if (_context.CarReservations == null)
            {
                return NotFound();
            }
            return await _context.CarReservations.ToListAsync();
        }

        // GET: api/CarReservations/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CarReservation>> GetCarReservationById(int id)
        {
            if (_context.CarReservations == null)
            {
                return NotFound();
            }
            var carReservation = await _context.CarReservations.FindAsync(id);

            if (carReservation == null)
            {
                return NotFound();
            }

            return carReservation;
        }

        // PUT: api/CarReservations/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateCarReservation(int id, CarReservation carReservation)
        {
            if (id != carReservation.ReservationId)
            {
                return BadRequest();
            }

            _context.Entry(carReservation).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CarReservationExists(id))
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

        // POST: api/CarReservations
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CarReservation>> NewCarReservation(CarReservation carReservation)
        {
            if (_context.CarReservations == null)
            {
                return Problem("Entity set 'airlineDBContext.CarReservations'  is null.");
            }
            _context.CarReservations.Add(carReservation);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (CarReservationExists(carReservation.ReservationId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetCarReservation", new { id = carReservation.ReservationId }, carReservation);
        }

        // DELETE: api/CarReservations/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCarReservation(int id)
        {
            if (_context.CarReservations == null)
            {
                return NotFound();
            }
            var carReservation = await _context.CarReservations.FindAsync(id);
            if (carReservation == null)
            {
                return NotFound();
            }

            _context.CarReservations.Remove(carReservation);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CarReservationExists(int id)
        {
            return (_context.CarReservations?.Any(e => e.ReservationId == id)).GetValueOrDefault();
        }
    }
}
