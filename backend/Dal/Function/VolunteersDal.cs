using Dal.Interface;
using Dal.models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class VolunteersDal : IVolunteerDal
    {
        VolunteersDbContext volunteersDbContext;
        public VolunteersDal(VolunteersDbContext volunteersDbContext)
        {
            this.volunteersDbContext = volunteersDbContext;
    }
        public List<VolunteersTbl> GetAllVolunteers()
        {
            return this.volunteersDbContext.VolunteersTbls.Include(x=> x.Status).ToList();
        }

        public VolunteersTbl Add(VolunteersTbl volunteer)
        {
            VolunteersTbl newVolunteer = volunteer;
            newVolunteer.Status.Id= volunteer.StatusId;
            newVolunteer.Status.Description= volunteersDbContext.VolunteerStatusTbls.FirstOrDefault(x => x.Id == volunteer.StatusId).Description;
            this.volunteersDbContext.Add(newVolunteer);
            volunteersDbContext.SaveChanges();
            return volunteer;
        }
        public VolunteersTbl GetById(string id, string password)
        {
            VolunteersTbl volunteer = volunteersDbContext.VolunteersTbls.FirstOrDefault(x=> x.Tz==id && x.Password==password);
            if(volunteer != null) 
            {
                volunteer.StatusId = 1;
            }
            return volunteer;
        }

        public bool UpdatStatus(string idVal, int idSatus)
        {
            VolunteersTbl volunteer = volunteersDbContext.VolunteersTbls.FirstOrDefault(x => x.Tz == idVal);
            if (volunteer != null)
            {
                volunteer.StatusId = idSatus;
                volunteersDbContext.SaveChanges();
                return true;
            }
            return false;
        }

        public async Task<List<VolunteersTbl>> GetAllAvailaibleVolunteers(int hospitalId, int departmentId)
        {
            try
            {
                int statusId = volunteersDbContext.VolunteerStatusTbls.FirstOrDefault(x => x.Description == "פנוי").Id;
                if (statusId == 0)
                {
                    return null;
                }
                List<VolunteersTbl> lv = await volunteersDbContext.VolunteersTbls.Where(v => v.HospitalId == hospitalId &&
                v.DepartmentId == departmentId && v.StatusId == statusId).ToListAsync();
                return lv;
            }
            catch
            {
                return null;
            }
        }

        public async Task<List<VolunteersTbl>> GetAllVolunteersAvailaibleAndInBreak(int hospitalId, int departmentId)
        {
            try
            {
                int statusId = volunteersDbContext.VolunteerStatusTbls.FirstOrDefault(x => x.Description.Equals("לא נמצא")).Id;
                if (statusId == 0)
                {
                    return null;
                }
                List<VolunteersTbl> lv = await volunteersDbContext.VolunteersTbls.Where(v => v.HospitalId == hospitalId && 
                v.DepartmentId == departmentId && v.StatusId != statusId).ToListAsync();
                return lv;
            }
            catch
            {
                return null;
            }
        }

        public async Task<List<VolunteersTbl>> GetAllVolunteersInTheSameFloor(List<DepartmentsTbl> departments)
        {
            try
            {
                List<VolunteersTbl> volunteers = new List<VolunteersTbl>();
                foreach (var department in departments)
                {
                    List<VolunteersTbl> list = GetAllAvailaibleVolunteers(department.HospitalId, department.Id).Result;
                    foreach (VolunteersTbl item in list)
                    {
                        volunteers.Add(item);
                    }
                }
                return volunteers;
            }
            catch
            {
                return null;
            }
        }
    }
}
