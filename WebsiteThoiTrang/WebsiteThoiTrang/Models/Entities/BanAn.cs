namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BanAn")]
    public partial class BanAn
    {
        [Key]
        public int MaSoBan { get; set; }

        [StringLength(10)]
        public string LoaiBan { get; set; }

        public int? MaPhieuYeuCau { get; set; }

        public virtual PhieuYeuCau PhieuYeuCau { get; set; }

        public virtual PhieuYeuCau PhieuYeuCau1 { get; set; }
    }
}
