using System;
using System.Collections.Generic;

namespace WebApi.models;

public partial class ContactStatusTbl
{
    public int Id { get; set; }

    public string? Description { get; set; }

    public virtual ICollection<ContactsTbl> ContactsTbls { get; set; } = new List<ContactsTbl>();
}
