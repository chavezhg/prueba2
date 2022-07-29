using System;
using System.Data;
using System.Data.SqlClient;

namespace com.ricardo.prueba2.backend.DAO
{
    class MainDAO
    {
        public MainDAO()
        {
            DS = new DataSet();
        }
        protected DBConnectPrueba2 DBConnectPrueba2;
        protected SqlCommand cmd;
        protected DataSet DS { get; set; }
        protected DataSet ExecuteDataSet(string query, CommandType commandType, params SqlParameter[] parameters)
        {
            DS = new DataSet();
            try
            {
                using (cmd = new SqlCommand(query, DBConnectPrueba2.Conexion, DBConnectPrueba2.Transaccion))
                {
                    cmd.CommandType = commandType;
                    cmd.Parameters.AddRange(parameters);
                    cmd.CommandTimeout = 1800;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(DS);
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }
            return DS;
        }
    }
}
