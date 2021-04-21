﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using WebsiteBanGiaySneaker.Models.Entities;

namespace WebsiteBanGiaySneaker.Models
{
    public class GioHang
    {
        public int masp { get; set; }

        public string tensp { get; set; }

        public string hinhanh { get; set; }

        public double dongia { get; set; }

        [Required(ErrorMessage = "{0} không được để trống")]
        public int masize { get; set; }

        [Required(ErrorMessage = "{0} không được để trống")]
        public int tensize { get; set; }

        public int mamau { get; set; }

        public string tenmau { get; set; }

        [Range(1, 10,ErrorMessage =("Số lượng tối thiểu là 1 tối đa 10 sản phẩm"))]
        public int soluong { get; set; }

        public double thanhtien { get { return soluong * dongia; } }

        WebsiteThoiTrangEntities db = new WebsiteThoiTrangEntities();

        public GioHang(int Masp,int Mamau,int Masize)
        {
            masp = Masp;
            //var giay = (from s in db.GIAYs
            //            join c in db.CHITIETGIAYs
            //             on s.MaSP equals c.MaSP
            //            where s.MaSP == Masp
            //            select new GioHang(Masp, Mamau, Masize)
            //            {
            //                tensp = s.TenSP,
            //                hinhanh = s.Anh,
            //                dongia = double.Parse(s.DonGia.ToString()),
            //                soluong = 1,
            //                mau = c.MaMau,
            //                size = c.MaSize
            //            }).SingleOrDefault(s => s.masp == Masp && s.mau == Mamau && s.size == Masize);

            GIAY giay = db.GIAYs.SingleOrDefault(n => n.MaSP == masp);
            tensp = giay.TenSP;
            hinhanh = giay.Anh;
            dongia = double.Parse(giay.DonGia.ToString());
            soluong = 1;
            CHITIETGIAY ctgiay = db.CHITIETGIAYs.SingleOrDefault(s =>s.MaSP == Masp && s.MaMau == Mamau && s.MaSize == Masize);
            mamau = ctgiay.MaMau;
            masize = ctgiay.MaSize;
            MAUSAC mausac = db.MAUSACs.SingleOrDefault(m => m.MaMau == mamau);
            tenmau = mausac.Color;
            SIZE sizes = db.SIZEs.SingleOrDefault(s => s.MaSize == masize);
            tensize = sizes.Size1;
        }

    }
}