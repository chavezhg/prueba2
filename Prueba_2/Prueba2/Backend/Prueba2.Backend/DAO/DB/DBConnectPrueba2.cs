using System;
using System.Data.SqlClient;

namespace com.ricardo.prueba2.backend.DAO
{
    class DBConnectPrueba2 : IDisposable
    {
        public DBConnectPrueba2(bool pbIniciarTransaccion = false)
        {
            try
            {
                Conexion = new SqlConnection("Server=tcp:prueba2examen.database.windows.net,1433;Database=Prueba2;Uid=prueba2;Pwd=Ricardo_01;");

                Conexion.Open();
                if (pbIniciarTransaccion)
                    Transaccion = Conexion.BeginTransaction();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener la conexión a la base de datos.", ex);
            }
        }
        public SqlConnection Conexion { get; set; }
        public SqlTransaction Transaccion { get; set; }
        public void Close()
        {
            try
            {
                Conexion.Close();
            }
            catch (Exception)
            {

            }
        }
        public void Dispose()
        {
            Close();
        }
    }
}