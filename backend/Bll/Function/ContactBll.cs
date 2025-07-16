using AutoMapper;
using Bll.Interface;
using Dal.Function;
using Dal.Interface;
using Dal.models;
using Dto.Profils;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

namespace Bll.Function
{

    public class ContactBll : IContactBll
    {
        private readonly IConfiguration _config;

        static IMapper mapper;
        IcontactsDal dall;
        IVolunteerDal voler;
        IDepartmentDall dDal;
        ContactStatusDal statusDal;

        public ContactBll(IcontactsDal dall, IVolunteerDal voler, IDepartmentDall dDal, ContactStatusDal statusDal, IConfiguration config)
        {
            this.statusDal = statusDal;
            this.voler = voler;
            this.dall = dall;
            this.dDal = dDal;
            this._config = config;

            var mapperConfig = new MapperConfiguration(cfg => {
                cfg.AddProfile<Profils>();
            });
            mapper = mapperConfig.CreateMapper();

        }

        public List<ContactsDto> GetAllContacts()
        {
            return mapper.Map <List<ContactsTbl>, List<ContactsDto>>(this.dall.GetAllContacts());
        }

        public bool sentSms(string phoneNumber, string message)
        {
            // Find your Account SID and Auth Token at twilio.com/console
            // and set the environment variables. See http://twil.io/secure
            string accountSid = _config["Twilio:AccountSid"];
            string authToken = _config["Twilio:AuthToken"];
            string fromPhone = _config["Twilio:FromPhoneNumber"];
            string toPhone = _config["Twilio:ToPhoneNumber"]; // need to chaengs
            TwilioClient.Init(accountSid, authToken);

            var sms = MessageResource.Create(
       body: message,
       from: new Twilio.Types.PhoneNumber(fromPhone),
       to: new Twilio.Types.PhoneNumber(toPhone)
   );

            Console.WriteLine(sms.Sid);
            return true;
        }

        public async Task<ContactsDto> AddContact(PatientDto p, string desc)
        {
            ContactStatusTbl contactStatus;
            // יצירת פניה חדשה
            ContactsDto c = mapper.Map<ContactsTbl, ContactsDto>(this.dall.AddContact(mapper.Map<PatientDto,PatientsTbl>(p),desc));
            // שליפת כל המתנדבים הפנויים מאותה מחלקה
            List<VolunteerDto> lv = mapper.Map<List<VolunteersTbl>, List<VolunteerDto>>(await this.voler.GetAllAvailaibleVolunteers(p.HospitalId,p.DepartmentId));

            string message = "message 1";
            foreach (var item in lv)
            {
                sentSms(item.Phone, message);
            }

            await Task.Delay(12000);

            contactStatus = this.statusDal.GetStatusId(c.Id);
            if (contactStatus.Description.Equals("ממתינה") )
            {
                lv = mapper.Map<List<VolunteersTbl>, List<VolunteerDto>>(await this.voler.GetAllVolunteersAvailaibleAndInBreak(p.HospitalId, p.DepartmentId));

                message = "message 2";
                foreach (var item in lv)
                {
                    sentSms(item.Phone, message);
                }

                await Task.Delay(18000);

                contactStatus = this.statusDal.GetStatusId(c.Id);

                if (contactStatus.Description.Equals("ממתינה"))
                {
                    List<DepartmentsTbl> departments = dDal.GetAllDepartmentsNextToOther(p.HospitalId, p.DepartmentId);

                    lv = mapper.Map<List<VolunteersTbl>, List<VolunteerDto>>(await this.voler.GetAllVolunteersInTheSameFloor(departments));
                    
                    message = "message 3";
                    foreach (var item in lv)
                    {
                        sentSms(item.Phone, message);
                    }
                    await Task.Delay(12000);
                    contactStatus = this.statusDal.GetStatusId(c.Id);
                    if (contactStatus.Description.Equals("ממתינה"))
                    {
                        // send a message to the admin 
                        string adminPhone = _config["Twilio:AdminPhoneNumber"];
                        sentSms(adminPhone, "contact number " + c.Description + " was not answered");
                        // update the contact status to "לא נענתה"
                        c.StatusId = 11;
                    }

                }

            }

      
            return c;
        }
    }
}
