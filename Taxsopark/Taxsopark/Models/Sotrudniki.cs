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
    
    public partial class Sotrudniki
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sotrudniki()
        {
            this.Smena = new HashSet<Smena>();
        }
    
        public int IdSotrudniki { get; set; }
        public string Imia { get; set; }
        public string Familia { get; set; }
        public string Othestvo { get; set; }
        public string Telefon { get; set; }
        public Nullable<int> IdRol { get; set; }
        public string Pochta { get; set; }
    
        public virtual Dolznost Dolznost { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Smena> Smena { get; set; }
    }
}