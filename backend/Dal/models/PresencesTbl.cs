using System;
using System.Collections.Generic;

namespace Dal.models;

public partial class PresencesTbl
{
    public int Id { get; set; }

    public int? VolunteerId { get; set; }

    public DateTime Date { get; set; }

    public DateTime EnterTime { get; set; }

    public DateTime ExitTime { get; set; }

    public DateTime BreakTime { get; set; }

    public DateTime TotalHours { get; set; }

    public int? Credits { get; set; }

    public virtual VolunteersTbl? Volunteer { get; set; }
}
