using com.ricardo.prueba2.backend.DAO;
using com.ricardo.prueba2.backend.Model;
using com.ricardo.prueba2.backend.Utilities;
using System;
using System.Collections.Generic;
using System.IO;

namespace com.ricardo.prueba2.backend.Business
{
    public class UsuariosManager
    {
        private UsuariosDAO UsuariosDAO { get; }
        public UsuariosManager()
        {
            UsuariosDAO = new UsuariosDAO();
        }
        private List<Usuarios> GetAll()
        {
            Result resultado = UsuariosDAO.GetAll();
            if (resultado.Success)
            {
                List<Usuarios> res = resultado.Data as List<Usuarios>;
                return res;
            }
            else
            {
                //Añadir al log del sistema que la consulta falló, dar mantenimiento
                //No se incluyó en el requerimiento
                return new List<Usuarios>();
            }

        }
        public List<Usuarios> GetTopUsers()
        {
            Result resultado = UsuariosDAO.GetAll();
            if (resultado.Success)
            {
                List<Usuarios> res = resultado.Data as List<Usuarios>;
                //Regla de negocio, devolver solo los 10 primeros
                return res.GetRange(0, (res.Count < 10) ? res.Count : 10);
            }
            else
            {
                //Añadir al log del sistema que la consulta falló, dar mantenimiento
                //No se incluyó en el requerimiento
                return new List<Usuarios>();
            }
        }
        public void GetCsv(string fileName)
        {
            List<Usuarios> usuarios = GetAll();
            //List<Usuarios> usuarios = new List<Usuarios> { new Usuarios() { Login = "1", Empleado = new Empleados() { FechaIngreso = DateTime.Now, Sueldo = 15, userId = 1 }, userId = 1, Materno = "Chavez", Paterno = "Mendoza", Nombre = "Ricardo Alexis" } };
            try
            {
                StreamWriter sw = new StreamWriter(fileName);
                sw.Write(string.Format("{0},{1},{2},{3}\n", new object[] { "Login", "Nombre completo", "Sueldo", "Fecha de ingreso" }));
                usuarios.ForEach(x =>
                {
                    sw.Write(string.Format("{0},{1},{2},{3}\n", new object[] { x.Login, x.GetName(), x.Empleado.Sueldo, x.Empleado.FechaIngreso }));
                });
                sw.Close();
                if (usuarios.Count > 0)
                    Console.WriteLine("Se generó el csv\n");
                else
                    Console.WriteLine("No hay registros, se generó el csv vacío\n");
            }
            catch (Exception _)
            {

            }
        }
        public Result Create(Usuarios usuario)
        {
            return UsuariosDAO.Create(usuario);
        }
        public Result UpdateSalary(Usuarios usuario)
        {
            return UsuariosDAO.UpdateSalary(usuario);
        }
    }
}
