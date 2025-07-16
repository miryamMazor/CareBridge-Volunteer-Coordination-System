using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IHospitalBll
    {
        int AddHospital(HospitalsDto hospital);
        List<HospitalsDto> GetAllHospitals();
        HospitalsDto UpdateHospital(HospitalsDto hospital);

    }
}
