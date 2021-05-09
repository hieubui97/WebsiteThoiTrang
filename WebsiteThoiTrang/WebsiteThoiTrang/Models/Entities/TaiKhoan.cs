namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiKhoan")]
    public partial class TaiKhoan
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string MaNV { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(50)]
        public string MatKhau { get; set; }

        public int? MaQuyenTruyCap { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual QuyenTruyCap QuyenTruyCap { get; set; }
    }
}
