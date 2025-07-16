using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Bll.Interface;
using Dto.Repository;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VolunteersController : ControllerBase
    {
        IVolunteerBll bll;

        public VolunteersController (IVolunteerBll bll)
        {
            this.bll= bll;
        }
        [HttpGet]
        [Route("GetAllVolunteers")]
        public ActionResult<List<VolunteerDto>> GetAllVolunteers()
        {
            return this.bll.GetAllVolunteers();
        }

        [HttpPost]
        [Route("AddVolunteer")]
        public ActionResult<VolunteerDto> AddVolunteer([FromBody]VolunteerDto volunteer)

        {
            return this.bll.Add(volunteer);
        }
        [HttpGet]
        [Route("GetById/{id}/{pass}")]
        public ActionResult<VolunteerDto> GetById(string id,string pass)
        {
            return this.bll .GetById(id, pass);        
        }
        [HttpPut]
        [Route("UpdateStatus/{idVal}/{idStatus}")]
        public ActionResult<bool> UpdateStatus(string idVal,int idStatus)
        {
            return this.bll.UpdatStatus(idVal,idStatus);
        }

    }
}
