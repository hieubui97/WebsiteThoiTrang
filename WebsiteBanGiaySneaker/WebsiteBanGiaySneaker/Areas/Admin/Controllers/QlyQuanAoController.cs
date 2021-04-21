using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using System.IO;
using WebsiteBanGiaySneaker.Models.Entities;

namespace WebsiteBanGiaySneaker.Areas.Admin.Controllers
{
    public class QlyQuanAoController : BaseController
    {
        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();
        // GET: Admin/QlyGiay
        public ActionResult DanhSachAo(string timkiem, int? page)
        {
            ViewBag.TuKhoa = timkiem;
            int pageNumber = (page ?? 1);
            int pageSize = 5;
            if (timkiem != null)
            {
                List<AO> listKQ = db.AOs.Where(n => n.TenAo.Contains(timkiem)).ToList();
                if (listKQ.Count == 0)
                {
                    TempData["tb"] = "Không tìm thấy sản phẩm nào phù hợp.";
                    return View(db.AOs.OrderBy(n => n.TenAo).ToPagedList(pageNumber, pageSize));
                }
                return View(listKQ.OrderBy(n => n.MaAo).ToPagedList(pageNumber, pageSize));
            }
            return View(db.AOs.OrderBy(n => n.TenAo).ToPagedList(pageNumber, pageSize));
        }

        [HttpGet]
        public ActionResult ThemMoiAo()
        {
            ViewBag.ThuongHieu = new SelectList(db.THUONGHIEUx.ToList().OrderBy(n => n.TenThuongHieu), "MaThuongHieu", "TenThuongHieu");
            ViewBag.LoaiAo = new SelectList(db.LOAIAOs.ToList().OrderBy(n => n.TenLoaiAo), "MaLoaiAo", "TenLoaiAo");
            ViewBag.TenSP = new SelectList(db.AOs.ToList().OrderBy(n => n.TenAo), "MaSP", "TenSP");
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiAo(AO sp, HttpPostedFileBase fileUpload, HttpPostedFileBase fileUpload2, HttpPostedFileBase fileUpload3)
        {
            int maLoaiAo = int.Parse(Request.Form["LoaiAo"]);
            int maThuongHieu = int.Parse(Request.Form["ThuongHieu"]);

            sp.MaLoaiAo = maLoaiAo;
            sp.MaThuongHieu = maThuongHieu;

            ViewBag.ThuongHieu = new SelectList(db.THUONGHIEUx.ToList().OrderBy(n => n.TenThuongHieu), "MaThuongHieu", "TenThuongHieu");
            ViewBag.LoaiAo = new SelectList(db.LOAIAOs.ToList().OrderBy(n => n.TenLoaiAo), "MaLoaiAo", "TenLoaiAo");

            if (fileUpload == null)
            {
                ViewBag.ThongBao = "Chọn hình ảnh";
                return View();
            }

            //Thêm vào cơ sở dữ liệu
            try
            {
                //Lưu tên file
                var fileName = Path.GetFileName(fileUpload.FileName);

                var fileName2 = Path.GetFileName(fileUpload2.FileName);

                var fileName3 = Path.GetFileName(fileUpload3.FileName);

                //Lưu đường dẫn của file
                var path = Path.Combine(Server.MapPath("~/HinhAnh/HinhAnhSP"), fileName);

                var path2 = Path.Combine(Server.MapPath("~/HinhAnh/HinhAnhSP"), fileName2);

                var path3 = Path.Combine(Server.MapPath("~/HinhAnh/HinhAnhSP"), fileName3);

                //Kiểm tra hình ảnh đã tồn tại chưa
                if (System.IO.File.Exists(path))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload.SaveAs(path);
                }

                //Kiểm tra hình ảnh đã tồn tại chưa
                if (System.IO.File.Exists(path2))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload2.SaveAs(path2);
                }

                //Kiểm tra hình ảnh đã tồn tại chưa
                if (System.IO.File.Exists(path3))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload3.SaveAs(path3);
                }

                sp.Anh = fileUpload.FileName;
                sp.Anh2 = fileUpload2.FileName;
                sp.Anh3 = fileUpload3.FileName;

                //sp.NgayCapNhat = DateTime.Now;

                sp.MaLoaiAo = maLoaiAo;
                sp.MaThuongHieu = maThuongHieu;

                db.AOs.Add(sp);

                db.SaveChanges();

                TempData["thanhcong"] = "Thêm mới sản phẩm thành công!";
            }
            catch (Exception)
            {
                TempData["kthanhcong"] = "Thêm sản phẩm thất bại";
            }

            return View();
        }

        //Chỉnh sửa sản phẩm
        [HttpGet]
        public ActionResult ChinhSuaAo(int masp)
        {
            //Lấy ra đối tượng sp theo mã
            AO ao = db.AOs.SingleOrDefault(n => n.MaAo == masp);
            if (ao == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Đưa dữ liệu vào dropdownlist
            ViewBag.ThuongHieu = new SelectList(db.THUONGHIEUx.ToList(), "MaThuongHieu", "TenThuongHieu", ao.MaThuongHieu);
            ViewBag.LoaiAo = new SelectList(db.LOAIAOs.ToList().OrderBy(n => n.TenLoaiAo), "MaLoaiAo", "TenLoaiAo", ao.MaAo);
            return View(ao);
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ChinhSuaAo(AO ao)
        {
            var errors = ModelState.Values.SelectMany(v => v.Errors);
            int maLoaiAo = int.Parse(Request.Form["LoaiAo"]);
            int maThuongHieu = int.Parse(Request.Form["ThuongHieu"]);
            //Thêm vào CSDL
            try
            {
                //Thực hiện cập nhật trong model
                ao.MaLoaiAo = maLoaiAo;
                ao.MaThuongHieu = maThuongHieu;
                ao.NgayCapNhat = DateTime.Now;
                db.Entry(ao).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["thanhcong"] = "Chỉnh sửa sản phẩm thành công!";
            }
            catch(Exception e)
            {
                TempData["kthanhcong"] = "Chỉnh sửa thất bại!";
            }
            //Đưa dữ liệu vào dropdownlist
            ViewBag.ThuongHieu = new SelectList(db.THUONGHIEUx.ToList().OrderBy(n => n.TenThuongHieu), "MaThuongHieu", "TenThuongHieu");
            ViewBag.LoaiAo = new SelectList(db.LOAIAOs.ToList().OrderBy(n => n.TenLoaiAo), "MaLoaiAo", "TenLoaiAo", ao.MaAo);

            return RedirectToAction("DanhSachAo");
        }

        public ActionResult HienThiAo(int masp)
        {
            //Lấy ra đối tượng sp theo mã
            AO ao = db.AOs.SingleOrDefault(n => n.MaAo == masp);
            if (ao == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ao);
        }

        //Xóa giày
        [HttpGet]
        public ActionResult XoaAo(int masp)
        {
            //Lấy ra đối tượng sp theo mã
            AO ao = db.AOs.SingleOrDefault(n => n.MaAo == masp);
            if (ao == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ao);
        }

        [HttpPost, ActionName("XoaAo")]
        public ActionResult XacNhanXoa(int masp)
        {
            AO ao = db.AOs.SingleOrDefault(n => n.MaAo == masp);
            if (ao == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.AOs.Remove(ao);
            db.SaveChanges();

            return RedirectToAction("DanhSachAo");
        }


        public ActionResult ChiTietAo(int masp, int? page)
        {
            TempData["Masp"] = masp;
            int pageNumber = (page ?? 1);
            int pageSize = 5;

            //Lấy ra đối tượng sp theo mã
            var listAo = db.CHITIETAOs.Where(n => n.MaAo == masp).OrderBy(n => n.MaAo).ToPagedList(pageNumber, pageSize);
            if (listAo == null)
            {
                Response.StatusCode = 404;
                return null;
            }

            return View(listAo);
        }
    }

}