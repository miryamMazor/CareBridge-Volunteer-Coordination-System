using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class ContactStatusDal: IContactStatus
    {
        VolunteersDbContext db= new VolunteersDbContext();
        public ContactStatusDal(VolunteersDbContext db)
        {
            this.db = db;
        }

        public ContactStatusTbl GetStatusId(int contactId)
        {
            ContactsTbl contact = this.db.ContactsTbls.FirstOrDefault(x => x.Id == contactId);
            if (contact == null)
            {
                return null;
            }
            return this.db.ContactStatusTbls.FirstOrDefault(x => x.Id == contact.StatusId);
        }
    }
}
