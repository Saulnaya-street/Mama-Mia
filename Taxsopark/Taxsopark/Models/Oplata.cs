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
    
    public partial class Oplata
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Oplata()
        {
            this.Zakazi = new HashSet<Zakazi>();
        }
    
        public int IdOplata { get; set; }
        public Nullable<decimal> Summa { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.TimeSpan> Vremia { get; set; }
        public Nullable<int> IdSposobOplati { get; set; }
        public Nullable<int> IdStatusOplati { get; set; }
    
        public virtual SposobOplati SposobOplati { get; set; }
        public virtual StatusOplati StatusOplati { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Zakazi> Zakazi { get; set; }
    }
}