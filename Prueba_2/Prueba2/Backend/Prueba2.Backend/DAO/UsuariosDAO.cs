using com.ricardo.prueba2.backend.DAO.DB;
using com.ricardo.prueba2.backend.Model;
using com.ricardo.prueba2.backend.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace com.ricardo.prueba2.backend.DAO
{
    internal class UsuariosDAO : MainDAO
    {
        internal Result GetAll()
        {
            try
            {
                List<Usuarios> usuarios = new List<Usuarios>();
                using (DBConnectPrueba2 = new DBConnectPrueba2())
                {
                    ExecuteDataSet(Statements.UsuariosGetAll, CommandType.StoredProcedure, new SqlParameter[] { });
                }
                if (DS != null && DS.Tables.Count > 0 && DS.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow i in DS.Tables[0].Rows)
                    {
                        usuarios.Add(new Usuarios(i));
                    }
                    return new Result(true, DS.Tables[0].Rows[0].ItemArray[1].ToString(), usuarios);
                }
                return new Result(true, "La consulta no devolvió registros\n", usuarios);
            }
            catch (Exception e)
            {
                return new Result(e);
            }
        }

        internal Result Create(Usuarios usuario)
        {
            try
            {
                using (DBConnectPrueba2 = new DBConnectPrueba2())
                {
                    ExecuteDataSet(Statements.UsueriosInsert, CommandType.StoredProcedure, new SqlParameter[] {
                        new SqlParameter("@Login", usuario.Login),
                        new SqlParameter("@Nombre", usuario.Nombre),
                        new SqlParameter("@Paterno", usuario.Paterno),
                        new SqlParameter("@Materno", usuario.Materno),
                        new SqlParameter("@Sueldo", usuario.Empleado.Sueldo)
                    });
                }
                return new Result(DS);
            }
            catch (Exception e)
            {
                return new Result(e);
            }
        }

        internal Result UpdateSalary(Usuarios usuario)
        {
            try
            {
                using (DBConnectPrueba2 = new DBConnectPrueba2())
                {
                    ExecuteDataSet(Statements.UsueriosUpdateSalary, CommandType.StoredProcedure, new SqlParameter[] {
                        new SqlParameter("@userId", usuario.userId),
                        new SqlParameter("@Sueldo", usuario.Empleado.Sueldo)
                    });
                }
                return new Result(DS);
            }
            catch (Exception e)
            {
                return new Result(e);
            }
        }
    }
}
