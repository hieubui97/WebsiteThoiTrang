namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhapThucPham")]
    public partial class NhapThucPham
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaPhieuNhap { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string MaThucPham { get; set; }

        public int? SoLuong { get; set; }

        public virtual PhieuNhap PhieuNhap { get; set; }

        public virtual ThucPham ThucPham { get; set; }
    }
}
