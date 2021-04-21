using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebsiteBanGiaySneaker.Models;
using PagedList;
using PagedList.Mvc;
using WebsiteBanGiaySneaker.Models.Entities;

namespace WebsiteBanGiaySneaker.Areas.Admin.Controllers
{
    public class QlyMauSacController : BaseController
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: Admin/QlyMauSac
        public ActionResult DanhSachMauSac(string timkiem, int? page)
        {
            ViewBag.TuKhoa = timkiem;
            int pageNumber = (page ?? 1);
            int pageSize = 20;
            if (timkiem != null)
            {
                List<MAUSAC> listKQ = db.MAUSACs.Where(n => n.Color.Contains(timkiem)).ToList();
                if (listKQ.Count == 0)
                {
                    TempData["thongbao"] = "Không tìm thấy màu nào phù hợp.";
                    return View(db.MAUSACs.OrderBy(n => n.MaMau).ToPagedList(pageNumber, pageSize));
                }
                return View(listKQ.OrderBy(n => n.MaMau).ToPagedList(pageNumber, pageSize));
            }
            return View(db.MAUSACs.OrderBy(n => n.MaMau).ToPagedList(pageNumber, pageSize));
        }


        // GET: Admin/QlyMauSac/Create
        public ActionResult ThemMoi()
        {
            return View();
        }

        // POST: Admin/QlyMauSac/Create
        [HttpPost]
        public ActionResult ThemMoi(MAUSAC mau)
        {
            if (ModelState.IsValid)
            {
                //chèn dữ liệu
                db.MAUSACs.Add(mau);
                //Lưu vào CSDL
                db.SaveChanges();
                TempData["thongbao"] = "Thêm mới màu thành công!";
            }
            else
                TempData["thongbao"] = "Thêm mới màu thất bại";
            return View();
        }

        // GET: Admin/QlyMauSac/Edit/5
        public ActionResult ChinhSuaMau(int mamau)
        {
            MAUSAC mau = db.MAUSACs.SingleOrDefault(n => n.MaMau == mamau);
            return View(mau);
        }

        // POST: Admin/QlyMauSac/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSuaMau(MAUSAC mau)
        {
            //Thêm vào CSDL
            if (ModelState.IsValid)
            {
                //Thực hiện cập nhật trong model
                db.Entry(mau).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["thongbao"] = "Chỉnh sửa thành công!";
            }
            else
                TempData["thongbao"] = "Chỉnh sửa thất bại!!";
            return View(mau);
        }

    }
}
