using Microsoft.AspNetCore.Mvc;
using Bll.Interface;
using Dto.Repository;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PatientController : ControllerBase
    {
        IPatientBll bll;

        public PatientController(IPatientBll bll)
        {
            this.bll = bll;
        }

        [HttpGet]
        [Route("GetAllPatients")]
        public ActionResult<List<PatientDto>> GetAllPatients()
        {
            return this.bll.GetAllPatients();
        }

        [HttpPost]
        [Route("AddPatient")]
        public ActionResult<PatientDto> AddPatient([FromBody] PatientDto patient) 
        { 
            return this.bll.Add(patient);
        }
        [HttpGet]
        [Route("GetById/{id}/{pass}")]
        public ActionResult<PatientDto> GetById(string id, string pass)
        {
            return this.bll.GetById(id, pass);
        }

    }
}
