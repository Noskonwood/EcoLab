//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Workman
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Workman()
        {
            this.SalesOfWorkmans = new HashSet<SalesOfWorkmans>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public int SexId { get; set; }
        public Nullable<int> PositionId { get; set; }
        public Nullable<int> MaritalStatusId { get; set; }
        public Nullable<int> BirthYearId { get; set; }
        public Nullable<int> BirthDayId { get; set; }
        public Nullable<int> BirthMonthId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SalesOfWorkmans> SalesOfWorkmans { get; set; }
        public virtual Sex Sex1 { get; set; }
        public virtual MaritalStatus MaritalStatus { get; set; }
        public virtual Position Position { get; set; }
        public virtual BirthDay BirthDay { get; set; }
        public virtual BirthMonth BirthMonth { get; set; }
        public virtual BirthYear BirthYear { get; set; }
    }
}