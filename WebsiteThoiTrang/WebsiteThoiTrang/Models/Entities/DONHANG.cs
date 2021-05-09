namespace WebsiteThoiTrang.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DONHANG")]
    public partial class DONHANG
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DONHANG()
        {
            CHITIETHD = new HashSet<CHITIETHD>();
        }

        [Key]
        public int MaDH { get; set; }

        public int? MaKH { get; set; }

        public int? MaNV { get; set; }

        public DateTime? NgayDat { get; set; }

        public DateTime? NgayGiao { get; set; }

        [StringLength(50)]
        public string DCGiao { get; set; }

        public decimal? TongTien { get; set; }

        [StringLength(20)]
        public string ThanhToan { get; set; }

        [StringLength(20)]
        public string TinhTrang { get; set; }

        [StringLength(30)]
        public string HoTen { get; set; }

        [StringLength(30)]
        public string Email { get; set; }

        [StringLength(11)]
        public string SDT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETHD> CHITIETHD { get; set; }

        public virtual KHACHHANG KHACHHANG { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}
