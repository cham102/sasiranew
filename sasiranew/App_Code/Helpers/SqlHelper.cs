using System;
using System.Data;
using System.Data.SqlClient;

namespace sasiranew.App_Code.Helpers
{
    internal static class SqlHelper
    {
        public static SqlConnection OpenConnection()
        {
            var con = new SqlConnection(DbConfig.ConnectionString);
            con.Open();
            return con;
        }

        public static SqlParameter Param(string name, object value)
        {
            return new SqlParameter(name, value ?? DBNull.Value);
        }
    }
}
