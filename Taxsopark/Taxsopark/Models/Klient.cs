//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Taxsopark.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Klient
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Klient()
        {
            this.Zakazi = new HashSet<Zakazi>();
        }
    
        public int IdKlienta { get; set; }
        public string Imia { get; set; }
        public string Familia { get; set; }
        public int IdOtsenka { get; set; }
        public string KontaktnyyNomer { get; set; }
        public string Pochta { get; set; }
        public Nullable<int> IdPlatezhnyyeKarty { get; set; }
    
        public virtual Otsenka Otsenka { get; set; }
        public virtual PlatezhnyyeKarty PlatezhnyyeKarty { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Zakazi> Zakazi { get; set; }
    }
}
