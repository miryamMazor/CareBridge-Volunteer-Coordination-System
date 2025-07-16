using AutoMapper;
using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class DepartmentDal : IDepartmentDall
    {
        VolunteersDbContext db;
        public DepartmentDal(VolunteersDbContext db)
        {
            this.db = db;
        }

        public DepartmentsTbl AddDepartment(DepartmentsTbl department)
        {
            this.db.DepartmentsTbls.Add(department);
            this.db.SaveChanges();
            //try { }
            //catch { }
            return department;
        }
        public List<DepartmentsTbl> GetDepartmentsForHospital(int hospitalId)
        {
            return this.db.DepartmentsTbls.Where(x=>x.Hospital.Id==hospitalId).ToList();
        }
        public List<DepartmentsTbl> GetAllDepartmentsNextToOther(int hospitalId, int departmentId)

        {
            DepartmentsTbl department = this.db.DepartmentsTbls.FirstOrDefault(x => x.Id == departmentId);
            if (department == null)
            {
                return null;
            }
            return this.db.DepartmentsTbls.Where(x =>
                                x.HospitalId == hospitalId &&
                                x.Build == department.Build &&
                                x.Wing == department.Wing &&
                                Math.Abs(department.FloorNum - x.FloorNum) <= 1).ToList();
        }

        public List<DepartmentsTbl> GetAllDepartments()
        {
            return this.db.DepartmentsTbls.ToList();
        }
    }
}
