using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class HospitalDal : IHospitalDal
    {
        VolunteersDbContext VolunteersDbContext;
        public HospitalDal(VolunteersDbContext VolunteersDbContext)
        {
            this.VolunteersDbContext = VolunteersDbContext;
        }
        public int AddHospital(HospitalsTbl hospital)
        {
            this.VolunteersDbContext.HospitalsTbls.Add(hospital);
            this.VolunteersDbContext.SaveChanges();
            return hospital.Id;
        }

        public List<HospitalsTbl> GetAllHospitals()
        {
            return this.VolunteersDbContext.HospitalsTbls.ToList();
        }

        public HospitalsTbl UpdateHospital(HospitalsTbl hospital)
        {
            HospitalsTbl h = this.VolunteersDbContext.HospitalsTbls.FirstOrDefault(x => x.Id == hospital.Id);
            this.VolunteersDbContext.HospitalsTbls.Remove(h);
            this.VolunteersDbContext.HospitalsTbls.Add(hospital);

            this.VolunteersDbContext.SaveChanges();
            return hospital;
        }
    }
}
