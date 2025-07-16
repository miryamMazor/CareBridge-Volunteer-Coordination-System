using System;
using System.Collections.Generic;

namespace Dal.models;

public partial class DepartmentsTbl
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string? Build { get; set; }

    public string? Wing { get; set; }

    public int FloorNum { get; set; }

    public int HospitalId { get; set; }

    public virtual ICollection<ApartmentsInActivitysTbl> ApartmentsInActivitysTbls { get; set; } = new List<ApartmentsInActivitysTbl>();

    public virtual HospitalsTbl Hospital { get; set; } = null!;

    public virtual ICollection<PatientsTbl> PatientsTbls { get; set; } = new List<PatientsTbl>();

    public virtual ICollection<VolunteersTbl> VolunteersTbls { get; set; } = new List<VolunteersTbl>();
}
