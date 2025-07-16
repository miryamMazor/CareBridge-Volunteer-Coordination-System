using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AutoMapper;
using Dal.models;
using Dto.Repository;

namespace Dto.Profils
{
    public class Profils:Profile
    {
        public Profils() 
        { 
            CreateMap<PatientsTbl, PatientDto>()
                .ReverseMap();
             CreateMap<VolunteersTbl, VolunteerDto>()
                .ForMember(v => v.StatusDesc, o => o.MapFrom(p => p.Status.Description))
                .ReverseMap();
            CreateMap<HospitalsTbl,HospitalsDto>().ReverseMap();

            CreateMap<DepartmentsTbl, DepartmentDto>().ReverseMap();
            CreateMap<VolunteerStatusTbl, StatusDto>().ReverseMap();
            CreateMap<ContactsTbl, ContactsDto>().ReverseMap();
        }
    }
}
