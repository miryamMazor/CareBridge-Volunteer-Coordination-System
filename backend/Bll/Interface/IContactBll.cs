using Dal.Function;
using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IContactBll
    {
        List<ContactsDto> GetAllContacts();
        bool sentSms(string phonNumber,string desc);
        Task<ContactsDto> AddContact(PatientDto p, string desc);

    }
}
