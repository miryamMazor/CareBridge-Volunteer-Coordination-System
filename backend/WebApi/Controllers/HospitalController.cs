using Bll.Interface;
using Dto.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HospitalController : ControllerBase
    {
        IHospitalBll bll;
        public HospitalController(IHospitalBll bll)
        {
            this.bll = bll;
        }
        [HttpGet]
        [Route("GetAll")]
        public ActionResult<List<HospitalsDto>> GetAll()
        {
            return this.bll.GetAllHospitals();
        }
        [HttpPost]
        [Route("AddHospital")]
        public ActionResult<int> AddHospital(HospitalsDto hospitals)
        {
            return this.bll.AddHospital(hospitals);
        }
        [HttpPut]
        [Route("UpdateHospital")]
        public ActionResult<HospitalsDto> UpdateHospital([FromBody]  HospitalsDto hospitals)
        {
            return this.bll.UpdateHospital(hospitals);
        }

    }
}
