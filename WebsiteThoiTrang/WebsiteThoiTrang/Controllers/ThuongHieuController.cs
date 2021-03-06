using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteThoiTrang.Models;
using WebsiteThoiTrang.Models.Entities;

namespace WebsiteThoiTrang.Controllers
{
    public class ThuongHieuController : Controller
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: ThuongHieu
       public PartialViewResult DanhSachThuongHieuPartial()
        {
            var listDSThuongHieu = db.NSX.ToList();
            return PartialView(listDSThuongHieu);
        }

        public ViewResult SPTheoThuongHieu(int math = 0)
        {
            //Kiểm tra tồn tại của thương hiệu
            NSX th = db.NSX.SingleOrDefault(n=>n.MaNSX == math);   
            if(th==null)
            {
                Response.StatusCode = 404;
                return null; 
            }
            List<SANPHAM> listSP = db.SANPHAM.Where(n => n.MaNSX == math).OrderBy(n => n.DonGia).ToList(); 
            if(listSP.Count==0)
            {
                ViewBag.SP = "Hiện chưa có sản phẩm của thương hiệu này!!!" +
                    "Chúng tôi sẽ sớm cập nhập trong thời gian sắp tới.";
            }
            else
            {
                ViewBag.ThuongHieu = th.TenNSX;
            }
            return View(listSP);
        }
    }
}