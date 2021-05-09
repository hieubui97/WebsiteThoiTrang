using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebsiteThoiTrang.Models.Entities
{
    public partial class WebsiteThoiTrangEntities : DbContext
    {
        public WebsiteThoiTrangEntities()
            : base("name=WebsiteThoiTrangEntities")
        {
        }

        public virtual DbSet<CHITIETHD> CHITIETHD { get; set; }
        public virtual DbSet<CHITIETPN> CHITIETPN { get; set; }
        public virtual DbSet<CHITIETSP> CHITIETSP { get; set; }
        public virtual DbSet<DONHANG> DONHANG { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANG { get; set; }
        public virtual DbSet<LOAISP> LOAISP { get; set; }
        public virtual DbSet<MAUSAC> MAUSAC { get; set; }
        public virtual DbSet<NCC> NCC { get; set; }
        public virtual DbSet<NHANVIEN> NHANVIEN { get; set; }
        public virtual DbSet<NSX> NSX { get; set; }
        public virtual DbSet<PHIEUNHAP> PHIEUNHAP { get; set; }
        public virtual DbSet<SANPHAM> SANPHAM { get; set; }
        public virtual DbSet<SIZE> SIZE { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CHITIETHD>()
                .Property(e => e.DonGia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<CHITIETPN>()
                .Property(e => e.Gia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<CHITIETPN>()
                .Property(e => e.ThanhTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<DONHANG>()
                .Property(e => e.TongTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<DONHANG>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<DONHANG>()
                .Property(e => e.SDT)
                .IsFixedLength();

            modelBuilder.Entity<DONHANG>()
                .HasMany(e => e.CHITIETHD)
                .WithRequired(e => e.DONHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.Sdt)
                .IsUnicode(false);

            modelBuilder.Entity<KHACHHANG>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETHD)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETPN)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETSP)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<NCC>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<NCC>()
                .Property(e => e.Sdt)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.Sdt)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.CMND)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.MatKhau)
                .IsUnicode(false);

            modelBuilder.Entity<NHANVIEN>()
                .Property(e => e.QuyenNV)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<NSX>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<NSX>()
                .Property(e => e.Sdt)
                .IsUnicode(false);

            modelBuilder.Entity<NSX>()
                .HasMany(e => e.SANPHAM)
                .WithRequired(e => e.NSX)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUNHAP>()
                .Property(e => e.TongTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<PHIEUNHAP>()
                .HasMany(e => e.CHITIETPN)
                .WithRequired(e => e.PHIEUNHAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.Anh)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.DonGia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.Anh2)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .Property(e => e.Anh3)
                .IsUnicode(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CHITIETHD)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CHITIETPN)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SANPHAM>()
                .HasMany(e => e.CHITIETSP)
                .WithRequired(e => e.SANPHAM)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETHD)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETPN)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETSP)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);
        }
    }
}
