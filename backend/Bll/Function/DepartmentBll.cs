
using AutoMapper;
using Bll.Interface;
using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dal.Interface;
using Dto.Profils;

namespace Bll.Function
{
    public class DepartmentBll : IDepartmentBll
    {
        static IMapper mapper;
        IDepartmentDall dall;
        public DepartmentBll(IDepartmentDall dall)
        {
            this.dall = dall;
            var config = new MapperConfiguration(cfg =>
            { cfg.AddProfile<Profils>(); });
            mapper = config.CreateMapper();
        }

        public DepartmentDto AddDepartment(DepartmentDto department)
        {
            DepartmentsTbl d = new DepartmentsTbl();
            d= mapper.Map<DepartmentDto,DepartmentsTbl>(department);
            this.dall.AddDepartment(d);
            return department;
        }

        public bool AddListDepartments(List<DepartmentDto> departments)
        {
            List<DepartmentsTbl> ld = new List<DepartmentsTbl>();
            ld = mapper.Map<List<DepartmentDto>, List<DepartmentsTbl>>(departments);
            foreach (var item in ld)
            {
                this.dall.AddDepartment(item);
            }

            return true;
        }

        public List<DepartmentDto> GetAllDepartments()
        {
            return mapper.Map <List<DepartmentsTbl>,List<DepartmentDto>>( this.dall.GetAllDepartments()).ToList();
        }

        public List<DepartmentDto> GetAllDepartmentsNextToOther(int hospitalId, int departmentId)
        {
            return mapper.Map<List<DepartmentsTbl>, List<DepartmentDto>>(this.dall.GetAllDepartmentsNextToOther(hospitalId, departmentId)).ToList();
        }

        public List<DepartmentDto> GetDepartmentsForHospital(int hospitalId)
        {
            return mapper.Map<List<DepartmentsTbl>, List<DepartmentDto>>(this.dall.GetDepartmentsForHospital(hospitalId)).ToList();

        }
    }
}
