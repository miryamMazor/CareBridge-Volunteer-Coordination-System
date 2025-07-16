using Dal.Interface;
using Dal.models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dal.Function
{
    public class ContactsDal : IcontactsDal
    {
        VolunteersDbContext VolunteersDbContext;
        public ContactsDal(VolunteersDbContext volunteersDbContext)
        {
            VolunteersDbContext = volunteersDbContext;
        }

        public ContactsTbl AddContact(PatientsTbl p, string desc)
        {
            try
            {
                Console.WriteLine(DateTime.Now);
                ContactsTbl c = new ContactsTbl();
                c.PatientId = p.Id;
                c.Description = desc;
                c.Date = DateTime.Now;
                c.StatusId = VolunteersDbContext.ContactStatusTbls.Where(s => s.Description.Equals("ממתינה")).ToList()[0].Id;
                Console.WriteLine(c.Description);
                this.VolunteersDbContext.ContactsTbls.Add(c);
                VolunteersDbContext.SaveChangesAsync();
                ContactsTbl newContact = VolunteersDbContext.ContactsTbls.FirstOrDefault(contact =>
                contact.Date.Equals(c.Date) && contact.PatientId == c.PatientId && contact.Description.Equals(c.Description));
                return newContact;
            }
            catch
            {
                return null;
            }
        }

        public List<ContactsTbl> GetAllContacts()
        {
            return this.VolunteersDbContext.ContactsTbls.ToList();
        }

        public List<ContactsTbl> GetAllContactsForHospital(int hospitalId)
        {
            return this.VolunteersDbContext.ContactsTbls.Where(x=>x.Patient.HospitalId.Equals(hospitalId)).ToList();
        }

        public List<ContactsTbl> GetAllContactsForDepartment(int hospitalId,int departmentId)
        {
            return this.VolunteersDbContext.ContactsTbls.Where
                (x => x.Patient.HospitalId.Equals(hospitalId)&&x.Patient.Department.Id.Equals(departmentId)).ToList();
        }
    }
}
