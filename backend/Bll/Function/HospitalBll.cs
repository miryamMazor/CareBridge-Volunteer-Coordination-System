using AutoMapper;
using Bll.Interface;
using Dal.Interface;
using Dal.models;
using Dto.Profils;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Function
{
    public class HospitalBll : IHospitalBll
    {
        static IMapper mapper;
        IHospitalDal dal;
        public HospitalBll(IHospitalDal dal)
        {
            this.dal = dal;
            var config = new MapperConfiguration(cfg =>
            { cfg.AddProfile<Profils>(); });
            mapper = config.CreateMapper();
        }

        public int AddHospital(HospitalsDto hospital)
        {
            HospitalsTbl h = new HospitalsTbl();
            h = mapper.Map<HospitalsDto, HospitalsTbl>(hospital);
            return this.dal.AddHospital(h);
        }

        public List<HospitalsDto> GetAllHospitals()
        {
            List<HospitalsTbl> ls = this.dal.GetAllHospitals();
            return mapper.Map<List<HospitalsTbl>,List<HospitalsDto>>(ls);
        }

        public HospitalsDto UpdateHospital(HospitalsDto hospital)
        {
            return mapper.Map<HospitalsTbl, HospitalsDto>(this.dal.UpdateHospital(mapper.Map<HospitalsDto, HospitalsTbl>(hospital)));
        }
    }
}
