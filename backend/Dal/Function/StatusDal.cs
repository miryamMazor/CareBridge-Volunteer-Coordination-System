using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class StatusDal : IstatusDal
    {
        VolunteersDbContext VolunteersDbContext;

        public StatusDal(VolunteersDbContext VolunteersDbContext) 
        {
            this.VolunteersDbContext = VolunteersDbContext;
        }
        public List<VolunteerStatusTbl> GetAll()
        { 
            return this.VolunteersDbContext.VolunteerStatusTbls.ToList();
        }

        public VolunteerStatusTbl GetStatusId(int contactId)
        {
            ContactsTbl contact= this.VolunteersDbContext.ContactsTbls.FirstOrDefault(x=>x.Id==contactId);
            if(contact == null)
            {
                return null;
            }
                return this.VolunteersDbContext.VolunteerStatusTbls.FirstOrDefault(x=>x.Id==contact.StatusId);
        }
    }
}
