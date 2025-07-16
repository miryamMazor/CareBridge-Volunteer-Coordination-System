using AutoMapper;
using Dal.Interface;
using Bll.Interface;
using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dto.Profils;

namespace Bll.Function
{
    public class VolunteerBll : IVolunteerBll
    {
        static IMapper mapper;
        IVolunteerDal dal;
        public VolunteerBll(IVolunteerDal dal)
        {
            this.dal = dal;
            var config = new MapperConfiguration(cfg =>
            { cfg.AddProfile<Profils>(); });
            mapper = config.CreateMapper();
        }
        public VolunteerDto Add(VolunteerDto volunteers)
        {
            VolunteersTbl p = new VolunteersTbl();
            p = mapper.Map<VolunteerDto, VolunteersTbl>(volunteers);
            this.dal.Add(p);
            return volunteers;
        }

        public List<VolunteerDto> GetAllVolunteers()
        {
            List<VolunteersTbl> lv= dal.GetAllVolunteers();
            return mapper.Map<List<VolunteersTbl> ,List<VolunteerDto>>(lv);
        }

        public VolunteerDto GetById(string id, string pass)
        {
            VolunteersTbl p = new VolunteersTbl();
            p = this.dal.GetById(id, pass);
            return mapper.Map<VolunteersTbl, VolunteerDto>(p);
        }

        public bool UpdatStatus(string idVal, int idSatus)
        {
            return this.dal.UpdatStatus(idVal, idSatus);
        }
    }
}
