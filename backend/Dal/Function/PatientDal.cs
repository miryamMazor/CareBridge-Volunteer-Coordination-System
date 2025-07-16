using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class PatientDal : IPatientDal
    {
        VolunteersDbContext volunteersDbContext;
        public PatientDal(VolunteersDbContext volunteersDbContext)
        {
            this.volunteersDbContext = volunteersDbContext;
        }

        public PatientsTbl Add(PatientsTbl patientsTbl)
        {
            this.volunteersDbContext.PatientsTbls.Add(patientsTbl);
            volunteersDbContext.SaveChanges();
            return patientsTbl;
        }

        public List<PatientsTbl> GetAllPatients()
        {
            return this.volunteersDbContext.PatientsTbls.ToList();
        }

        public PatientsTbl GetPatientsById(string id, string password)
        {
            PatientsTbl pation = this.volunteersDbContext.PatientsTbls.FirstOrDefault(x => x.Tz == id && x.Password == password);
            return pation;
        }
    }
}
