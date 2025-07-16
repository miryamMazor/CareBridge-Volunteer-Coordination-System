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
    public class StatusBll : IstatusBll
    {
        static IMapper mapper;
        IstatusDal dal;
        public StatusBll(IstatusDal dal)
        {
            this.dal = dal;
            var config = new MapperConfiguration(cfg =>
            { cfg.AddProfile<Profils>(); });
            mapper = config.CreateMapper();
        }
        public List<StatusDto> GetAll()
        {
            return mapper.Map<List<VolunteerStatusTbl>, List<StatusDto>>(this.dal.GetAll());
        }
    }
}
