using System.Linq;
using System.Web.Mvc;
using System.Web.Security;
using WebsiteThoiTrang.Models.Entities;

namespace WebsiteThoiTrang.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: Admin/Login
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        public ActionResult kCoQuyen()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string sEmail = f["txtemail"].ToString();
            string sMatkhau = f["txtmatkhau"].ToString();
            NHANVIEN nv = db.NHANVIEN.SingleOrDefault(n => n.Email == sEmail && n.MatKhau == sMatkhau);
            if(nv!=null)
            {
                if (nv.QuyenNV == "1")
                {
                    ViewBag.ThongBao = "Xin chào, Admin:" + nv.TenNV;
                    FormsAuthentication.SetAuthCookie(nv.TenNV, false);
                    Session["TaiKhoanNV"] = nv;
                    Session["User"] = nv.TenNV;
                    Session["Pw"] = nv.MatKhau;
                    Session["MaNV"] = nv.MaNV;
                    Session["Quyen"] = nv.QuyenNV;
                    //TempData["thongbao"] = "Chào mừng bạn đến với trang quản lý của Admin";
                    return RedirectToAction("Index", "ThongKe");
                }
                else
                {
                    ViewBag.ThongBao = "Xin chào " + nv.TenNV;
                    FormsAuthentication.SetAuthCookie(nv.TenNV, false);
                    Session["TaiKhoanNV"] = nv;
                    Session["User"] = nv.TenNV;
                    Session["Pw"] = nv.MatKhau;
                    Session["Quyen"] = nv.QuyenNV;
                    //TempData["thongbao"] = "Chào mừng bạn đến với trang quản lý của nhân viên";
                    return RedirectToAction("Index", "ThongKe");
                }
            }
            ViewBag.ThongBao = "Tên tài khoản hoặc mật khẩu không đúng!!!";
            return View();
        }

        public ActionResult Logout()
        {
            Session.Abandon();
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
    }
}