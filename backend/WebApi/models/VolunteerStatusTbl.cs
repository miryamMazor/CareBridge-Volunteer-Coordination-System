using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class VolunteerStatusTbl
{
    public int Id { get; set; }

    public string? Description { get; set; }

    public virtual ICollection<VolunteersTbl> VolunteersTbls { get; set; } = new List<VolunteersTbl>();
}
