using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebsiteThoiTrang.Models;
using WebsiteThoiTrang.Models.Entities;

namespace WebsiteThoiTrang.Controllers
{
    public class KhachHangController : Controller
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();

        // GET: KhachHang
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ViewResult DangKy()
        {
            return View();
        }

        [HttpPost]
       // [ValidateAntiForgeryToken]
        public ViewResult DangKy(KHACHHANG kh)
        {
            if(ModelState.IsValid)
            { 
            //chèn dữ liệu
            db.KHACHHANG.Add(kh);
            //Lưu vào CSDL
            db.SaveChanges();
            }
            return View();
        }

        [HttpGet]
        public ViewResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection f)
        {
            string sEmail = f["email"].ToString();
            string sMatKhau = f["password"].ToString();
            KHACHHANG kh = db.KHACHHANG.SingleOrDefault(n => n.Email == sEmail && n.MatKhau == sMatKhau);
            if(kh!=null)
            {
                ViewBag.ThongBao = "Đăng nhập thành công";                
                Session["TaiKhoanKH"] = kh;
                Session["Userkh"] = kh.TenKH;
                ViewBag.TenKH = "Xin chào: "+kh.TenKH;
                return RedirectToAction("Index", "CuaHang");
            }
            ViewBag.ThongBao = "Tên tài khoản hoặc mật khẩu không đúng!!!";
            return View();

        }

        public ActionResult DangXuat()
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            return RedirectToAction("DangNhap");
        }

    }
}