﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EcoLab.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EcoLabEntities : DbContext
    {
        public EcoLabEntities()
            : base("name=EcoLabEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Workman> Workman { get; set; }
        public virtual DbSet<Brand> Brand { get; set; }
        public virtual DbSet<Category> Category { get; set; }
        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<QuantityUnit> QuantityUnit { get; set; }
        public virtual DbSet<SalesOfWorkmans> SalesOfWorkmans { get; set; }
        public virtual DbSet<Sex> Sex { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<MaritalStatus> MaritalStatus { get; set; }
        public virtual DbSet<Position> Position { get; set; }
        public virtual DbSet<BirthDay> BirthDay { get; set; }
        public virtual DbSet<BirthMonth> BirthMonth { get; set; }
        public virtual DbSet<BirthYear> BirthYear { get; set; }
    }
}
