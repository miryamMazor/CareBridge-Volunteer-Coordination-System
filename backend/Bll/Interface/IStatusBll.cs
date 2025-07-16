using Dal.models;
using Dto.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bll.Interface
{
    public interface IstatusBll
    {
        List<StatusDto> GetAll();


    }
}
