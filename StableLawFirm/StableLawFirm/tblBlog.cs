//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StableLawFirm
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblBlog
    {
        public tblBlog()
        {
            this.tblComments = new HashSet<tblComment>();
        }
    
        public int tblBlog_Id { get; set; }
        public string Image { get; set; }
        public string Title { get; set; }
        public string Text { get; set; }
        public Nullable<System.DateTime> Post_Date { get; set; }
        public Nullable<System.DateTime> published_Date { get; set; }
        public int tbluserid { get; set; }
        public Nullable<int> tblCategory_Id { get; set; }
    
        public virtual tblCategory tblCategory { get; set; }
        public virtual ICollection<tblComment> tblComments { get; set; }
    }
}
