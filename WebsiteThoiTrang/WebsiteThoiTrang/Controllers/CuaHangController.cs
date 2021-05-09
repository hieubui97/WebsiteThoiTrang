using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteThoiTrang.Models;
using WebsiteThoiTrang.Models.Entities;

namespace WebsiteThoiTrang.Controllers
{
    public class CuaHangController : Controller
    {

        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: CuaHang
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FooterPartial()
        {
            return PartialView();
        }

        public ActionResult GioiThieu()
        {
            return View();
        }
       
    }
}