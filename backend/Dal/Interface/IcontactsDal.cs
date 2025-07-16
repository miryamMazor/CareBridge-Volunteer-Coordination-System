using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Interface
{
    public interface IcontactsDal
    {
        List<ContactsTbl> GetAllContacts();

        ContactsTbl AddContact(PatientsTbl p, string desc);
    }
}
