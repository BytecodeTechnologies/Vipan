//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NewJersyTrafficTicket
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblUser
    {
        public tblUser()
        {
            this.tblResults = new HashSet<tblResult>();
            this.tblBlogs = new HashSet<tblBlog>();
        }
    
        public int tblUserId { get; set; }
        public string Name { get; set; }
        public Nullable<int> tblUserRoleId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    
        public virtual ICollection<tblResult> tblResults { get; set; }
        public virtual tblUserRole tblUserRole { get; set; }
        public virtual ICollection<tblBlog> tblBlogs { get; set; }
    }
}