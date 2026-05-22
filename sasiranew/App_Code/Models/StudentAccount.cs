using System;

namespace sasiranew.Models
{
    public sealed class StudentAccount
    {
        public string Username { get; set; }
        public string FullName { get; set; }
        public string Nic { get; set; }
        public string Email { get; set; }

        public string Password { get; set; }
        public string ConfirmPassword { get; set; }
    }
}
