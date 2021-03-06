namespace WebsiteThoiTrang.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CHITIETSP")]
    public partial class CHITIETSP
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaSP { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaSize { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int MaMau { get; set; }

        public int? SoLuong { get; set; }

        public virtual MAUSAC MAUSAC { get; set; }

        public virtual SIZE SIZE { get; set; }

        public virtual SANPHAM SANPHAM { get; set; }
    }
}
