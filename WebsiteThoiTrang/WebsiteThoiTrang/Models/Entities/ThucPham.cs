namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThucPham")]
    public partial class ThucPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThucPham()
        {
            NhapThucPhams = new HashSet<NhapThucPham>();
        }

        [Key]
        [StringLength(10)]
        public string MaThucPham { get; set; }

        [StringLength(50)]
        public string TenThucPham { get; set; }

        public int? DonGia { get; set; }

        [StringLength(3)]
        public string DVTinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<NhapThucPham> NhapThucPhams { get; set; }
    }
}
