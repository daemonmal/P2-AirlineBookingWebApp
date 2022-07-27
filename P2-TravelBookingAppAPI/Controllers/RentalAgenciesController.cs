using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using P2_TravelBookingAppAPI.Models.EF;

namespace P2_TravelBookingAppAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RentalAgenciesController : ControllerBase
    {
        private readonly airlineDBContext _context;

        public RentalAgenciesController(airlineDBContext context)
        {
            _context = context;
        }

        // GET: api/RentalAgencies
        [HttpGet]
        public async Task<ActionResult<IEnumerable<RentalAgency>>> GetRentalAgencies()
        {
          if (_context.RentalAgencies == null)
          {
              return NotFound();
          }
            return await _context.RentalAgencies.ToListAsync();
        }

        // GET: api/RentalAgencies/5
        [HttpGet("{id}")]
        public async Task<ActionResult<RentalAgency>> GetRentalAgency(int id)
        {
          if (_context.RentalAgencies == null)
          {
              return NotFound();
          }
            var rentalAgency = await _context.RentalAgencies.FindAsync(id);

            if (rentalAgency == null)
            {
                return NotFound();
            }

            return rentalAgency;
        }

        // PUT: api/RentalAgencies/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutRentalAgency(int id, RentalAgency rentalAgency)
        {
            if (id != rentalAgency.AgencyId)
            {
                return BadRequest();
            }

            _context.Entry(rentalAgency).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!RentalAgencyExists(id))
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

        // POST: api/RentalAgencies
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<RentalAgency>> PostRentalAgency(RentalAgency rentalAgency)
        {
          if (_context.RentalAgencies == null)
          {
              return Problem("Entity set 'airlineDBContext.RentalAgencies'  is null.");
          }
            _context.RentalAgencies.Add(rentalAgency);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (RentalAgencyExists(rentalAgency.AgencyId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetRentalAgency", new { id = rentalAgency.AgencyId }, rentalAgency);
        }

        // DELETE: api/RentalAgencies/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteRentalAgency(int id)
        {
            if (_context.RentalAgencies == null)
            {
                return NotFound();
            }
            var rentalAgency = await _context.RentalAgencies.FindAsync(id);
            if (rentalAgency == null)
            {
                return NotFound();
            }

            _context.RentalAgencies.Remove(rentalAgency);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool RentalAgencyExists(int id)
        {
            return (_context.RentalAgencies?.Any(e => e.AgencyId == id)).GetValueOrDefault();
        }
    }
}
