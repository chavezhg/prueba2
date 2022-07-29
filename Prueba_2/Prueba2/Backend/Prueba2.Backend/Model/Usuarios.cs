using System;
using System.Data;

namespace com.ricardo.prueba2.backend.Model
{
    public class Usuarios
    {
        public int userId { get; set; }
        public string Login { get; set; }
        public string Nombre { get; set; }
        public string Paterno { get; set; }
        public string Materno { get; set; }
        public Empleados Empleado { get; set; } = new Empleados();
        public Usuarios(DataRow row)
        {
            try
            {
                userId = Convert.ToInt32(row["userId"].ToString());
                Login = row["Login"].ToString();
                Nombre = row["Nombre"].ToString();
                Paterno = row["Paterno"].ToString();
                Materno = row["Materno"].ToString();
                Empleado.Sueldo = Convert.ToDouble(row["Sueldo"].ToString());
            }
            catch (Exception _)
            {
                userId = -1;
            }
        }

        public Usuarios()
        {
        }

        public string GetName() => Nombre + " " + Paterno + " " + Materno;
    }
}
