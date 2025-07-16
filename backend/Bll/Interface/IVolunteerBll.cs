using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IVolunteerBll
    {
        List<VolunteerDto> GetAllVolunteers();
        VolunteerDto Add(VolunteerDto volunteers);
        VolunteerDto GetById(string id,string pass);
        bool UpdatStatus(string idVal, int idSatus);

    }
}
