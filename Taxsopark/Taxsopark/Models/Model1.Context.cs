﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TaxsoparkEntities : DbContext
    {
        public TaxsoparkEntities()
            : base("name=TaxsoparkEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Avto> Avto { get; set; }
        public virtual DbSet<Dolznost> Dolznost { get; set; }
        public virtual DbSet<IstoriaZakazov> IstoriaZakazov { get; set; }
        public virtual DbSet<Klient> Klient { get; set; }
        public virtual DbSet<Oplata> Oplata { get; set; }
        public virtual DbSet<Otchet> Otchet { get; set; }
        public virtual DbSet<Otsenka> Otsenka { get; set; }
        public virtual DbSet<Period> Period { get; set; }
        public virtual DbSet<PlatezhnyyeKarty> PlatezhnyyeKarty { get; set; }
        public virtual DbSet<Poezdka> Poezdka { get; set; }
        public virtual DbSet<Smena> Smena { get; set; }
        public virtual DbSet<SostoyaniyeAvto> SostoyaniyeAvto { get; set; }
        public virtual DbSet<Sotrudniki> Sotrudniki { get; set; }
        public virtual DbSet<SposobOplati> SposobOplati { get; set; }
        public virtual DbSet<StatusOplati> StatusOplati { get; set; }
        public virtual DbSet<Tariv> Tariv { get; set; }
        public virtual DbSet<Tip> Tip { get; set; }
        public virtual DbSet<Tip_Avto> Tip_Avto { get; set; }
        public virtual DbSet<Vremia> Vremia { get; set; }
        public virtual DbSet<Zakazi> Zakazi { get; set; }
    }
}
