using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class PatientsTbl
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

    public virtual ICollection<ContactsTbl> ContactsTbls { get; set; } = new List<ContactsTbl>();

    public virtual DepartmentsTbl Department { get; set; } = null!;

    public virtual HospitalsTbl Hospital { get; set; } = null!;
}
