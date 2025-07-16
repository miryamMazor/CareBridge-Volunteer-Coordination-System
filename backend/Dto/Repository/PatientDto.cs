using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto.Repository
{
    public class PatientDto
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public string Tz { get; set; } = null!;

        public string Phone { get; set; } = null!;

        public DateTime BirthDate { get; set; }

        public string? Gender { get; set; }

        public int HospitalId { get; set; }

        public int DepartmentId { get; set; }

        public int RoomNumber { get; set; }

        public string Password { get; set; } = null!;
    }
}
