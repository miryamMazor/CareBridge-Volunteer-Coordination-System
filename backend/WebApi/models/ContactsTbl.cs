using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class ContactsTbl
{
    public int Id { get; set; }

    public string? Description { get; set; }

    public int PatientId { get; set; }

    public DateTime Date { get; set; }

    public int StatusId { get; set; }

    public int? VolunteerId { get; set; }

    public virtual PatientsTbl Patient { get; set; } = null!;

    public virtual ContactStatusTbl Status { get; set; } = null!;

    public virtual VolunteersTbl? Volunteer { get; set; }
}
