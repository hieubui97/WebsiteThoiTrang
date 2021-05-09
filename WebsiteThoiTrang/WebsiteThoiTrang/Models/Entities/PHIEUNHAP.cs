namespace WebsiteThoiTrang.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PHIEUNHAP")]
    public partial class PHIEUNHAP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PHIEUNHAP()
        {
            CHITIETPN = new HashSet<CHITIETPN>();
        }

        [Key]
        public int MaPN { get; set; }

        public DateTime NgayNhap { get; set; }

        public int? MaNV { get; set; }

        public int? MaNCC { get; set; }

        public decimal? TongTien { get; set; }

        [StringLength(20)]
        public string TinhTrang { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETPN> CHITIETPN { get; set; }

        public virtual NCC NCC { get; set; }

        public virtual NHANVIEN NHANVIEN { get; set; }
    }
}
