//------------------------------------------------------------------------------
// <auto-generated>
//     Der Code wurde von einer Vorlage generiert.
//
//     Manuelle Änderungen an dieser Datei führen möglicherweise zu unerwartetem Verhalten der Anwendung.
//     Manuelle Änderungen an dieser Datei werden überschrieben, wenn der Code neu generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyTelerik1ToNRelatuinship
{
    using System;
    using System.Collections.Generic;
    
    public partial class Book
    {
        public long Id { get; set; }
        public Nullable<long> PersonId { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public System.DateTime InsertDate { get; set; }
    
        public virtual Person Person { get; set; }
    }
}
