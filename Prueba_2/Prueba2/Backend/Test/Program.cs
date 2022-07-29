using com.ricardo.prueba2.backend.Business;
using com.ricardo.prueba2.backend.Model;
using System;

namespace Test
{
    class Program
    {
        public static UsuariosManager UsuariosManager { get; set; } = new UsuariosManager();
        public static bool Continuar { get; set; } = true;
        public static Usuarios Usuario { get; set; }
        static void Main(string[] args)
        {
            Console.WriteLine("Listar top 10 usuarios de la base antes creada");
            UsuariosManager.GetTopUsers().ForEach(x => Console.WriteLine(
                "userId: " + x.userId
                +
                "Login: " + x.Login
                +
                "Nombre: " + x.GetName()
                +
                "Sueldo: " + x.Empleado.Sueldo
                +
                "FechaIngreso: " + x.Empleado.FechaIngreso
                ));

            while (Continuar)
            {
                Console.WriteLine("Ingresa la opción deseada: ");
                Console.WriteLine("1. Actualizar salario de un empleado");
                Console.WriteLine("2. Agregar nuevo usuario");
                Console.WriteLine("3. Salir");
                int res = 0;
                try
                {
                    res = Convert.ToInt32(Console.ReadLine());
                }
                catch (Exception _)
                {
                    Console.WriteLine("Tienes que ingresar un número entre 1 y 3 :)");
                }
                switch (res)
                {
                    case 1:
                        Console.WriteLine("Ingresa el userId del usuario a modificar");
                        int opcion = 0;
                        try
                        {

                        }
                        catch (Exception _)
                        {
                            Console.WriteLine("Tienes que ingresar un id válido :)");
                        }
                        break;
                    case 2:
                        try
                        {
                            Console.WriteLine("Ingresa el nombre de usuario: ");
                            Usuario.Login = Console.ReadLine();
                            Console.WriteLine("Ingresa el nombre del usuario: ");
                            Usuario.Nombre = Console.ReadLine();
                            Console.WriteLine("Ingresa el apellido paterno del usuario: ");
                            Usuario.Paterno = Console.ReadLine();
                            Console.WriteLine("Ingresa el apellido materno del usuario: ");
                            Usuario.Materno = Console.ReadLine();
                            Console.WriteLine("Ingresa el sueldo del usuario: ");
                            Usuario.Empleado.Sueldo = Convert.ToDouble(Console.ReadLine());
                            UsuariosManager.Create(Usuario);
                        }
                        catch (Exception _)
                        {
                            Console.WriteLine("Tienes que ingresar los datos correctamente :)");
                        }
                        break;
                    case 3:
                        Continuar = false;
                        break;
                }
            }
        }
    }
}
