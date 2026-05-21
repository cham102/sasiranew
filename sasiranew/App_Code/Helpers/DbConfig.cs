using System;
using System.Configuration;

namespace sasiranew.App_Code.Helpers
{
    public static class DbConfig
    {
        public static string ConnectionString
        {
            get
            {
                var cs = ConfigurationManager.ConnectionStrings["registerConnectionString"]?.ConnectionString;
                if (string.IsNullOrWhiteSpace(cs))
                {
                    throw new InvalidOperationException("Missing connection string: registerConnectionString");
                }

                return cs;
            }
        }
    }
}
