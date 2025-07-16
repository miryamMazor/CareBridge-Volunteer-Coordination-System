using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IPatientBll
    {
        List<PatientDto> GetAllPatients();
        PatientDto Add(PatientDto patientsTbl);
        PatientDto GetById(string id,string pass);
    }
}
