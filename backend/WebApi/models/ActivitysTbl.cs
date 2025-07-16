using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class ActivitysTbl
{
    public int Id { get; set; }

    public int HospitalId { get; set; }

    public string? Description { get; set; }

    public int Age { get; set; }

    public DateTime DateAct { get; set; }

    public DateTime StartTime { get; set; }

    public DateTime EndTime { get; set; }

    public virtual ICollection<ApartmentsInActivitysTbl> ApartmentsInActivitysTbls { get; set; } = new List<ApartmentsInActivitysTbl>();

    public virtual HospitalsTbl Hospital { get; set; } = null!;
}
