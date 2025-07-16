using Bll.Interface;
using Dto.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ContactController : ControllerBase
    {
        IContactBll bll;
        public ContactController(IContactBll bll)
        {
            this.bll = bll;
        }
        [HttpGet]
        [Route("GetAll")]
        public ActionResult<List<ContactsDto>> GetAll()
        {
            return this.bll.GetAllContacts();
        }
        [HttpGet("sendSms/{phon}/{desc}")]
        public ActionResult<bool> sendSms(string phon,string desc)
        {
            return this.bll.sentSms(phon, desc);
        }
        [HttpPost]
        [Route("AddContact")]
        public ActionResult<Task<ContactsDto>> AddContact([FromBody] PatientDto p , string desc)
        {
            return this.bll.AddContact(p,desc);
        }

    }

}
