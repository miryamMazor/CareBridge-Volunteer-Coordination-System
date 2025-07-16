using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto.Repository
{
    public class VolunteerDto
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public string Tz { get; set; } = null!;

        public string Password { get; set; } = null!;

        public string Phone { get; set; } = null!;

        public string? Gender { get; set; }

        public int HospitalId { get; set; }

        public int DepartmentId { get; set; }

        public int StatusId { get; set; }
        public string StatusDesc { get; set; }

    }
}
