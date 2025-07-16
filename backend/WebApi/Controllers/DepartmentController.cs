using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Bll.Interface;
using Dto.Repository;
namespace WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {
        IDepartmentBll bll;
        public DepartmentController(IDepartmentBll bll)
        {
            this.bll = bll;
        }

        [HttpPost]
        [Route("AddDepartment")]
        public ActionResult<DepartmentDto> AddDepartment([FromBody] DepartmentDto department)
        {
            return this.bll.AddDepartment(department);
        }
        [HttpPost]
        [Route("AddListDepartments/{listDepartment}")]
        public ActionResult<bool> AddListDepartments(List<DepartmentDto> departments)
        {
            return this.bll.AddListDepartments(departments);
        }
        [HttpGet]
        [Route("GetAllDepartments")]
        public ActionResult<List<DepartmentDto>> GetAllDepartments ()
        {
            return this.bll.GetAllDepartments();
        }
        [HttpGet]
        [Route("GetDepartmentForHospital/{hospitalId}")]
        public ActionResult<List<DepartmentDto>> GetDepartmentForHospital (int hospitalId)
        {
            return this.bll.GetDepartmentsForHospital(hospitalId);
        }

    }
}
