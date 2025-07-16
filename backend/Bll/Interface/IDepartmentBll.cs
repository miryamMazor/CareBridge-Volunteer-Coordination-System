using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IDepartmentBll
    {
        DepartmentDto AddDepartment(DepartmentDto department);

        bool AddListDepartments(List<DepartmentDto> departments );
        List<DepartmentDto> GetAllDepartmentsNextToOther(int hospitalId, int departmentId);
        List<DepartmentDto> GetDepartmentsForHospital(int hospitalId);
        List<DepartmentDto> GetAllDepartments();
    }
}
