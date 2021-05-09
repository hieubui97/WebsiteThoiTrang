namespace WebsiteBanGiaySneaker.Models.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MonAn")]
    public partial class MonAn
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MonAn()
        {
            DatMons = new HashSet<DatMon>();
        }

        [Key]
        [StringLength(10)]
        public string MaMon { get; set; }

        [StringLength(40)]
        public string TenMon { get; set; }

        public int? DonGia { get; set; }

        [StringLength(10)]
        public string MaNhomMon { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DatMon> DatMons { get; set; }

        public virtual NhomMonAn NhomMonAn { get; set; }
    }
}
