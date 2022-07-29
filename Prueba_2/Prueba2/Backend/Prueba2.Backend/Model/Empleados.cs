using System;
using System.Data;

namespace com.ricardo.prueba2.backend.Model
{
    public class Empleados
    {
        public int userId { get; set; }
        public double Sueldo { get; set; }
        public DateTime FechaIngreso { get; set; }
        public Empleados(DataRow row)
        {
            try
            {
                userId = Convert.ToInt32(row["userId"].ToString());
                Sueldo = Convert.ToDouble(row["Sueldo"].ToString());
                FechaIngreso = Convert.ToDateTime(row["FechaIngreso"].ToString());
            }
            catch (Exception _)
            {
                userId = -1;
            }
        }

        public Empleados()
        {
        }
    }
}
