using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Interface
{
    public interface IPatientDal
    {
        List<PatientsTbl> GetAllPatients();
        PatientsTbl GetPatientsById(string id, string password);
        PatientsTbl Add(PatientsTbl patientsTbl);
    }
}
