using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class HospitalsTbl
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Manager { get; set; } = null!;

    public string Tz { get; set; } = null!;

    public string Password { get; set; } = null!;

    public string Phone { get; set; } = null!;

    public virtual ICollection<ActivitysTbl> ActivitysTbls { get; set; } = new List<ActivitysTbl>();

    public virtual ICollection<DepartmentsTbl> DepartmentsTbls { get; set; } = new List<DepartmentsTbl>();

    public virtual ICollection<PatientsTbl> PatientsTbls { get; set; } = new List<PatientsTbl>();

    public virtual ICollection<VolunteersTbl> VolunteersTbls { get; set; } = new List<VolunteersTbl>();
}
