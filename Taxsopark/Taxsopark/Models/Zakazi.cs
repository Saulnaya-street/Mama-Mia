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
    
    public partial class Zakazi
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Zakazi()
        {
            this.IstoriaZakazov = new HashSet<IstoriaZakazov>();
        }
    
        public int IdZakazi { get; set; }
        public Nullable<System.DateTime> VremiaZakaza { get; set; }
        public Nullable<System.TimeSpan> DataZakaza { get; set; }
        public Nullable<int> IdKlienta { get; set; }
        public Nullable<int> IdSmena { get; set; }
        public Nullable<int> IdPoezdka { get; set; }
        public Nullable<int> IdOplata { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<IstoriaZakazov> IstoriaZakazov { get; set; }
        public virtual Klient Klient { get; set; }
        public virtual Oplata Oplata { get; set; }
        public virtual Poezdka Poezdka { get; set; }
        public virtual Smena Smena { get; set; }
    }
}
