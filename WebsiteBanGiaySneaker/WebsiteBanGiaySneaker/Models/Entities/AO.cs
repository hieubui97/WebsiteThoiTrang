namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AO")]
    public partial class AO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public AO()
        {
            CHITIETAOs = new HashSet<CHITIETAO>();
        }

        [Key]
        public int MaAo { get; set; }

        [StringLength(100)]
        public string TenAo { get; set; }

        [StringLength(200)]
        public string Anh { get; set; }

        public int? MaLoaiAo { get; set; }

        public int? MaThuongHieu { get; set; }

        public int? SoLuong { get; set; }

        public int? DonGia { get; set; }

        [StringLength(200)]
        public string Anh2 { get; set; }

        [StringLength(200)]
        public string Anh3 { get; set; }

        public string MoTa { get; set; }

        public DateTime? NgayCapNhat { get; set; }

        public virtual LOAIAO LOAIAO { get; set; }

        public virtual THUONGHIEU THUONGHIEU { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETAO> CHITIETAOs { get; set; }
    }
}
