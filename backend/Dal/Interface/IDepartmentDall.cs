using Dal.Function;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Interface
{
    public interface IDepartmentDall
    {
        DepartmentsTbl AddDepartment(DepartmentsTbl department);
        List<DepartmentsTbl> GetAllDepartmentsNextToOther(int hospitalId, int departmentId);
        List<DepartmentsTbl> GetDepartmentsForHospital(int hospitalId);
        List<DepartmentsTbl> GetAllDepartments();
    }
}
