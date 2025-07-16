using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class ApartmentsInActivitysTbl
{
    public int Id { get; set; }

    public int ActivityId { get; set; }

    public int DepartmentId { get; set; }

    public virtual ActivitysTbl Activity { get; set; } = null!;

    public virtual DepartmentsTbl Department { get; set; } = null!;
}
