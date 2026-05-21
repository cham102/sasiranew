using System;
using System.Web;

namespace sasiranew.App_Code.Helpers
{
    public static class UiMessage
    {
        public static string ToJsAlert(string message)
        {
            message = message ?? string.Empty;
            return "<script>alert('" + HttpUtility.JavaScriptStringEncode(message) + "');</script>";
        }
    }
}
