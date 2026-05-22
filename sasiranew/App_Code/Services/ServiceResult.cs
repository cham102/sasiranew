using System;

namespace sasiranew.Services
{
    public sealed class ServiceResult
    {
        public bool Succeeded { get; private set; }
        public string ErrorMessage { get; private set; }

        public static ServiceResult Success()
        {
            return new ServiceResult { Succeeded = true };
        }

        public static ServiceResult Fail(string message)
        {
            return new ServiceResult { Succeeded = false, ErrorMessage = message };
        }
    }

    public sealed class ServiceResult<T>
    {
        public bool Succeeded { get; private set; }
        public string ErrorMessage { get; private set; }
        public T Value { get; private set; }

        public static ServiceResult<T> Success(T value)
        {
            return new ServiceResult<T> { Succeeded = true, Value = value };
        }

        public static ServiceResult<T> Fail(string message)
        {
            return new ServiceResult<T> { Succeeded = false, ErrorMessage = message };
        }
    }
}
