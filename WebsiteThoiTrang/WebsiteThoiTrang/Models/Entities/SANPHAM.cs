namespace WebsiteThoiTrang.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SANPHAM")]
    public partial class SANPHAM
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SANPHAM()
        {
            CHITIETHD = new HashSet<CHITIETHD>();
            CHITIETPN = new HashSet<CHITIETPN>();
            CHITIETSP = new HashSet<CHITIETSP>();
        }

        [Key]
        public int MaSP { get; set; }

        [Required]
        [StringLength(100)]
        public string TenSP { get; set; }

        [StringLength(50)]
        public string Anh { get; set; }

        public int MaNSX { get; set; }

        public int? MaLoai { get; set; }

        public int? SoLuong { get; set; }

        public decimal DonGia { get; set; }

        [StringLength(50)]
        public string Anh2 { get; set; }

        [StringLength(50)]
        public string Anh3 { get; set; }

        public string MoTa { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayCapNhat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETHD> CHITIETHD { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETPN> CHITIETPN { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIETSP> CHITIETSP { get; set; }

        public virtual LOAISP LOAISP { get; set; }

        public virtual NSX NSX { get; set; }
    }
}
