using Bll.Interface;
using Dto.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StatusController : ControllerBase
    {
        IstatusBll bll;
        public StatusController(IstatusBll bll)
        {
            this.bll = bll;
        }
        [HttpGet]
        [Route("GettAll")]
        public ActionResult<List<StatusDto>> GettAll()
        {
            return this.bll.GetAll();
        }
    }
}
