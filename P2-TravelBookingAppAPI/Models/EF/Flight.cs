using System;
using System.Collections.Generic;

namespace P2_TravelBookingAppAPI.Models.EF
{
    public partial class Flight
    {
        public Flight()
        {
            Customers = new HashSet<Customer>();
        }

        public int FlightId { get; set; }
        public string? FromCity { get; set; }
        public string? FromCountry { get; set; }
        public string? DestinationCity { get; set; }
        public string? DestinationCountry { get; set; }
        public DateTime? Takeoff { get; set; }
        public DateTime? Landingtime { get; set; }
        public double? Price { get; set; }

        public virtual ICollection<Customer> Customers { get; set; }
    }
}
