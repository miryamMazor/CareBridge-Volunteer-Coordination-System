using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto.Repository
{
    public class ContactsDto
    {
        public int Id { get; set; }

        public string? Description { get; set; }

        public int PatientId { get; set; }

        public DateTime Date { get; set; }

        public int StatusId { get; set; }

        public int? VolunteerId { get; set; }
    }
}
