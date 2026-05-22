using System;
using System.Net.Mail;
using sasiranew.Models;
using sasiranew.Repositories;

namespace sasiranew.Services
{
    public sealed class StudentAccountService
    {
        private readonly StudentAccountRepository _repo;

        public StudentAccountService()
        {
            _repo = new StudentAccountRepository();
        }

        public ServiceResult Register(StudentAccount account)
        {
            if (account == null)
            {
                return ServiceResult.Fail("Invalid request.");
            }

            if (string.IsNullOrWhiteSpace(account.Username)) return ServiceResult.Fail("Username is required.");
            if (string.IsNullOrWhiteSpace(account.FullName)) return ServiceResult.Fail("Full name is required.");
            if (string.IsNullOrWhiteSpace(account.Email)) return ServiceResult.Fail("Email is required.");
            if (!IsValidEmail(account.Email)) return ServiceResult.Fail("Please enter a valid email address.");
            if (string.IsNullOrWhiteSpace(account.Password)) return ServiceResult.Fail("Password is required.");
            if (!string.Equals(account.Password, account.ConfirmPassword, StringComparison.Ordinal))
                return ServiceResult.Fail("Password and confirm password do not match.");

            if (_repo.UsernameExists(account.Username))
            {
                return ServiceResult.Fail("Username is already taken.");
            }

            _repo.AddStudentAccount(account);
            return ServiceResult.Success();
        }

        public ServiceResult<StudentAccount> GetProfile(string username)
        {
            if (string.IsNullOrWhiteSpace(username)) return ServiceResult<StudentAccount>.Fail("User is not logged in.");

            var account = _repo.GetByUsername(username);
            if (account == null) return ServiceResult<StudentAccount>.Fail("Student account not found.");

            return ServiceResult<StudentAccount>.Success(account);
        }

        public ServiceResult ChangePassword(string username, string oldPassword, string newPassword, string confirmPassword)
        {
            if (string.IsNullOrWhiteSpace(username)) return ServiceResult.Fail("User is not logged in.");
            if (string.IsNullOrWhiteSpace(oldPassword)) return ServiceResult.Fail("Old password is required.");
            if (string.IsNullOrWhiteSpace(newPassword)) return ServiceResult.Fail("New password is required.");
            if (!string.Equals(newPassword, confirmPassword, StringComparison.Ordinal))
                return ServiceResult.Fail("New password and confirm password do not match.");

            if (!_repo.VerifyPassword(username, oldPassword))
            {
                return ServiceResult.Fail("Please check your old password.");
            }

            var updated = _repo.UpdatePassword(username, newPassword);
            return updated > 0 ? ServiceResult.Success() : ServiceResult.Fail("Password update failed.");
        }

        private static bool IsValidEmail(string email)
        {
            try
            {
                var _ = new MailAddress(email);
                return true;
            }
            catch (FormatException)
            {
                return false;
            }
        }
    }
}
