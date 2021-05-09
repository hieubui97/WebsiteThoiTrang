using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using PagedList;
using WebsiteThoiTrang.Models.Entities;

namespace WebsiteThoiTrang.Areas.Admin.Controllers
{
    public class QlyDanhMucController : BaseController
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: Admin/QlyDanhMuc
        public ActionResult DanhSach(string timkiem, int? page)
        {
            ViewBag.TuKhoa = timkiem;
            int pageNumber = (page ?? 1);
            int pageSize = 20;
            if (timkiem != null)
            {
                List<LOAISP> listKQ = db.LOAISP.Where(n => n.TenLoai.Contains(timkiem)).ToList();
                if (listKQ.Count == 0)
                {
                    TempData["thongbao"] = "Không tìm thấy màu nào phù hợp.";
                    return View(db.LOAISP.OrderBy(n => n.MaLoai).ToPagedList(pageNumber, pageSize));
                }
                return View(listKQ.OrderBy(n => n.MaLoai).ToPagedList(pageNumber, pageSize));
            }
            return View(db.LOAISP.OrderBy(n => n.MaLoai).ToPagedList(pageNumber, pageSize));
        }


        // GET: Admin/QlyDanhMuc/Create
        public ActionResult ThemMoi()
        {
            ViewBag.ParentID = new SelectList(db.NSX.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");
            return View();
        }

        // POST: Admin/QlyDanhMuc/Create
        [HttpPost]
        public ActionResult ThemMoi(LOAISP loaisp)
        {
            ViewBag.ParentID = new SelectList(db.LOAISP.ToList().OrderBy(n => n.TenLoai), "MaLoai", "TenLoai");

            if (ModelState.IsValid)
            {
                //Thêm dữ liệu
                db.LOAISP.Add(loaisp);
                //Lưu vào CSDL
                db.SaveChanges();
                TempData["thongbao"] = "Thêm mới danh mục thành công!";
            }
            else
                TempData["thongbao"] = "Thêm mới danh mục thất bại";
            return View();
        }

        // GET: Admin/QlyDanhMuc/Edit/
        public ActionResult ChinhSuaDanhMuc(int maloai)
        {
            ViewBag.ParentID = new SelectList(db.NSX.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");

            LOAISP loaisp = db.LOAISP.SingleOrDefault(n => n.MaLoai == maloai);

            return View(loaisp);
        }

        // POST: Admin/QlyDanhMuc/Edit/5
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSuaDanhMuc(LOAISP loaisp)
        {
            ViewBag.ParentID = new SelectList(db.NSX.ToList().OrderBy(n => n.TenNSX), "MaNSX", "TenNSX");

            //Thêm vào CSDL
            if (ModelState.IsValid)
            {
                //Thực hiện cập nhật trong model
                db.Entry(loaisp).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["thongbao"] = "Chỉnh sửa thành công!";
            }
            else
                TempData["thongbao"] = "Chỉnh sửa thất bại!!";
            return View(loaisp);
        }
    }
}