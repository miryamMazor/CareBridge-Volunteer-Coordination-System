 using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Interface
{
    public interface IVolunteerDal
    {
        List<VolunteersTbl> GetAllVolunteers();
        VolunteersTbl GetById(string id,string password);
        VolunteersTbl Add(VolunteersTbl volunteer);
        bool UpdatStatus(string idVal, int idSatus);
        Task<List<VolunteersTbl>> GetAllAvailaibleVolunteers(int hospitalId, int departmentId);
        Task<List<VolunteersTbl>> GetAllVolunteersAvailaibleAndInBreak(int hospitalId, int departmentId);
        Task<List<VolunteersTbl>> GetAllVolunteersInTheSameFloor(List<DepartmentsTbl> departments);


    }
}
