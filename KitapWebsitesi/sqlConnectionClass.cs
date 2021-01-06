using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace KitapWebsitesi
{
    public class sqlConnectionClass
    {
        public SqlConnection connection()
        {

                SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-D8116EJ\SQLEXPRESS02;Initial Catalog=Dbo_KitapWebsitesi;Integrated Security=True");
                cn.Open();
                return cn;
        }
    }
}