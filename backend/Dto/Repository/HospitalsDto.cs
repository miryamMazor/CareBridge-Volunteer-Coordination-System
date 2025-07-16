using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dto.Repository
{
    public class HospitalsDto
    {
        public int Id { get; set; }

        public string Name { get; set; } = null!;

        public string Manager { get; set; } = null!;

        public string Tz { get; set; } = null!;

        public string Password { get; set; } = null!;

        public string Phone { get; set; } = null!;
    }
}
