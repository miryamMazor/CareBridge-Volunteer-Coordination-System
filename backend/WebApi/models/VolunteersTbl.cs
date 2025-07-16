using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class VolunteersTbl
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

    public virtual ICollection<ContactsTbl> ContactsTbls { get; set; } = new List<ContactsTbl>();

    public virtual DepartmentsTbl Department { get; set; } = null!;

    public virtual HospitalsTbl Hospital { get; set; } = null!;

    public virtual ICollection<PresencesTbl> PresencesTbls { get; set; } = new List<PresencesTbl>();

    public virtual VolunteerStatusTbl Status { get; set; } = null!;
}
