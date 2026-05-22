using System;
using System.Data.SqlClient;
using sasiranew.Helpers;
using sasiranew.Models;

namespace sasiranew.Repositories
{
    public sealed class StudentAccountRepository
    {
        public bool UsernameExists(string username)
        {
            using (var con = SqlHelper.OpenConnection())
            using (var cmd = new SqlCommand("SELECT 1 FROM stdregister WHERE username = @username", con))
            {
                cmd.Parameters.Add(SqlHelper.Param("@username", username));
                var result = cmd.ExecuteScalar();
                return result != null && result != DBNull.Value;
            }
        }

        public void AddStudentAccount(StudentAccount account)
        {
            using (var con = SqlHelper.OpenConnection())
            using (var cmd = new SqlCommand(
                "INSERT INTO stdregister(username, fullname, nic, email, password, confirmpass) VALUES (@username, @fullname, @nic, @email, @password, @confirmpass)",
                con))
            {
                cmd.Parameters.Add(SqlHelper.Param("@username", account.Username));
                cmd.Parameters.Add(SqlHelper.Param("@fullname", account.FullName));
                cmd.Parameters.Add(SqlHelper.Param("@nic", account.Nic));
                cmd.Parameters.Add(SqlHelper.Param("@email", account.Email));
                cmd.Parameters.Add(SqlHelper.Param("@password", account.Password));
                cmd.Parameters.Add(SqlHelper.Param("@confirmpass", account.ConfirmPassword));
                cmd.ExecuteNonQuery();
            }
        }

        public StudentAccount GetByUsername(string username)
        {
            using (var con = SqlHelper.OpenConnection())
            using (var cmd = new SqlCommand("SELECT username, fullname, nic, email, password, confirmpass FROM stdregister WHERE username = @username", con))
            {
                cmd.Parameters.Add(SqlHelper.Param("@username", username));

                using (var reader = cmd.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        return null;
                    }

                    return new StudentAccount
                    {
                        Username = reader["username"] as string,
                        FullName = reader["fullname"] as string,
                        Nic = reader["nic"] as string,
                        Email = reader["email"] as string,
                        Password = reader["password"] as string,
                        ConfirmPassword = reader["confirmpass"] as string
                    };
                }
            }
        }

        public bool VerifyPassword(string username, string password)
        {
            using (var con = SqlHelper.OpenConnection())
            using (var cmd = new SqlCommand("SELECT 1 FROM stdregister WHERE username = @username AND password = @password", con))
            {
                cmd.Parameters.Add(SqlHelper.Param("@username", username));
                cmd.Parameters.Add(SqlHelper.Param("@password", password));
                var result = cmd.ExecuteScalar();
                return result != null && result != DBNull.Value;
            }
        }

        public int UpdatePassword(string username, string newPassword)
        {
            using (var con = SqlHelper.OpenConnection())
            using (var cmd = new SqlCommand("UPDATE stdregister SET password = @password, confirmpass = @confirmpass WHERE username = @username", con))
            {
                cmd.Parameters.Add(SqlHelper.Param("@username", username));
                cmd.Parameters.Add(SqlHelper.Param("@password", newPassword));
                cmd.Parameters.Add(SqlHelper.Param("@confirmpass", newPassword));
                return cmd.ExecuteNonQuery();
            }
        }
    }
}
