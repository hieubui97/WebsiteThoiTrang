using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebsiteThoiTrang.Controllers
{
    public class QuangCaoController : Controller
    {
        // GET: QuangCao
        public ActionResult QuangCaoPartial()
        {
            return View();
        }
    }
}