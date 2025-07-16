using AutoMapper;
using Bll.Interface;
using Dal.Interface;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dto.Profils;
using Dal.models;
using System.IO;
namespace Bll.Function
{
    public class PatientBll : IPatientBll
    {
        static IMapper mapper;
        IPatientDal dal;
        public PatientBll (IPatientDal dal)
        {
            this.dal = dal;
            var config= new MapperConfiguration(cfg =>
            { cfg.AddProfile<Profils>(); });
            mapper = config.CreateMapper();
        }

        public PatientDto Add(PatientDto patients)
        {
            PatientsTbl p = new PatientsTbl();
            p= mapper.Map<PatientDto,PatientsTbl>(patients);
            this.dal.Add(p);
            return patients;

        }
        public List<PatientDto> GetAllPatients()
        {
            List<PatientsTbl> ls=dal.GetAllPatients();
            return mapper.Map<List<PatientsTbl>,List<PatientDto>>(ls);
        }

        public PatientDto GetById(string id ,string pass)
        {
            PatientsTbl p = new PatientsTbl();
            p = this.dal.GetPatientsById(id,pass);
            return mapper.Map<PatientsTbl, PatientDto>(p);
        }

      
    }
}
