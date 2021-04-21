using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebsiteBanGiaySneaker.Models.Entities
{
    public partial class WebsiteThoiTrangEntities : DbContext
    {
        public WebsiteThoiTrangEntities()
            : base("name=WebsiteThoiTrangEntities")
        {
        }

        public virtual DbSet<AO> AOs { get; set; }
        public virtual DbSet<CHITIETAO> CHITIETAOs { get; set; }
        public virtual DbSet<CHITIETGIAY> CHITIETGIAYs { get; set; }
        public virtual DbSet<CHITIETHD> CHITIETHDs { get; set; }
        public virtual DbSet<CHITIETPN> CHITIETPNs { get; set; }
        public virtual DbSet<CHITIETQUAN> CHITIETQUANs { get; set; }
        public virtual DbSet<DONHANG> DONHANGs { get; set; }
        public virtual DbSet<GIAY> GIAYs { get; set; }
        public virtual DbSet<KHACHHANG> KHACHHANGs { get; set; }
        public virtual DbSet<LOAIAO> LOAIAOs { get; set; }
        public virtual DbSet<LOAIQUAN> LOAIQUANs { get; set; }
        public virtual DbSet<MAUSAC> MAUSACs { get; set; }
        public virtual DbSet<NCC> NCCs { get; set; }
        public virtual DbSet<NHANVIEN> NHANVIENs { get; set; }
        public virtual DbSet<NSX> NSXes { get; set; }
        public virtual DbSet<PHIEUNHAP> PHIEUNHAPs { get; set; }
        public virtual DbSet<QUAN> QUANs { get; set; }
        public virtual DbSet<SIZE> SIZEs { get; set; }
        public virtual DbSet<SIZEAO> SIZEAOs { get; set; }
        public virtual DbSet<THUONGHIEU> THUONGHIEUx { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AO>()
                .HasMany(e => e.CHITIETAOs)
                .WithRequired(e => e.AO)
                .WillCascadeOnDelete(false);

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
                .HasMany(e => e.CHITIETHDs)
                .WithRequired(e => e.DONHANG)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GIAY>()
                .Property(e => e.Anh)
                .IsUnicode(false);

            modelBuilder.Entity<GIAY>()
                .Property(e => e.DonGia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<GIAY>()
                .Property(e => e.Anh2)
                .IsUnicode(false);

            modelBuilder.Entity<GIAY>()
                .Property(e => e.Anh3)
                .IsUnicode(false);

            modelBuilder.Entity<GIAY>()
                .HasMany(e => e.CHITIETGIAYs)
                .WithRequired(e => e.GIAY)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GIAY>()
                .HasMany(e => e.CHITIETHDs)
                .WithRequired(e => e.GIAY)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<GIAY>()
                .HasMany(e => e.CHITIETPNs)
                .WithRequired(e => e.GIAY)
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
                .HasMany(e => e.CHITIETAOs)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETGIAYs)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETHDs)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETPNs)
                .WithRequired(e => e.MAUSAC)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MAUSAC>()
                .HasMany(e => e.CHITIETQUANs)
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
                .HasMany(e => e.GIAYs)
                .WithRequired(e => e.NSX)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PHIEUNHAP>()
                .Property(e => e.TongTien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<PHIEUNHAP>()
                .HasMany(e => e.CHITIETPNs)
                .WithRequired(e => e.PHIEUNHAP)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<QUAN>()
                .HasMany(e => e.CHITIETQUANs)
                .WithRequired(e => e.QUAN)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETGIAYs)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETHDs)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETPNs)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZE>()
                .HasMany(e => e.CHITIETQUANs)
                .WithRequired(e => e.SIZE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<SIZEAO>()
                .HasMany(e => e.CHITIETAOs)
                .WithRequired(e => e.SIZEAO)
                .WillCascadeOnDelete(false);
        }
    }
}
