namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("QUAN")]
    public partial class QUAN
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public QUAN()
        {
            CHITIETQUANs = new HashSet<CHITIETQUAN>();
        }

        [Key]
        public int MaQuan { get; set; }

        [StringLength(100)]
        public string TenQuan { get; set; }

        [StringLength(200)]
        public string Anh { get; set; }

        public int? MaLoaiQuan { get; set; }

        public int? MaThuongHieu { get; set; }

        public int? SoLuong { get; set; }

        public int? DonGia { get; set; }

        [StringLength(200)]
        public string Anh2 { get; set; }

        [StringLength(200)]
        public string Anh3 { get; set; }

        public string MoTa { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETQUAN> CHITIETQUANs { get; set; }

        public virtual LOAIQUAN LOAIQUAN { get; set; }

        public virtual THUONGHIEU THUONGHIEU { get; set; }
    }
}
