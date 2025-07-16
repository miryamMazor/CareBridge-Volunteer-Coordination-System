using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Interface
{
    public interface IHospitalDal
    {
        int AddHospital (HospitalsTbl hospital);
        List<HospitalsTbl> GetAllHospitals ();
        HospitalsTbl UpdateHospital (HospitalsTbl hospital);

    }
}
