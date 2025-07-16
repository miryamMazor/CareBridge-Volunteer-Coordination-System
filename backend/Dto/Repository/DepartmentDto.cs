using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto.Repository
{
    public class DepartmentDto
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public string? Build { get; set; }

        public string? Wing { get; set; }

        public int FloorNum { get; set; }

        public int HospitalId { get; set; }
    }
}
