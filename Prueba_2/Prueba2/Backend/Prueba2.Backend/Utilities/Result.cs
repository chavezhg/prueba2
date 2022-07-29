using System;
using System.Data;

namespace com.ricardo.prueba2.backend.Utilities
{
    public class Result
    {
        public bool Success { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }
        public Result(Exception e)
        {
            Data = e;
            Message = e.InnerException.ToString();
            Success = false;
        }
        public Result(bool success, string message, object data)
        {
            Success = success;
            Message = message;
            Data = data;
        }

        public Result(DataSet dS)
        {
            try
            {
                Data = dS;
                Success = !dS.HasErrors;
                Message = dS.Tables[0].Rows[0].ItemArray[1].ToString();
            }
            catch (Exception e)
            {
                Data = e;
                Message = e.InnerException.ToString();
                Success = false;
            }
        }
    }
}
