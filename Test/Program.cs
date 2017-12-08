using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            Transferencia.Usuario usuario =
                new Transferencia.Usuario()
                {
                    Id = 1,
                    Nombre = "Ponyo",
                    Apellido = "Barrera",
                    Correo = "Ponyo@Ponyo.cl",
                    FechaNac = DateTime.Now.AddYears(-10), 
                    Sexo = "Masculino",
                    Username ="Ponyo"
                };
            string directorio = System.Reflection.Assembly.GetExecutingAssembly().Location;
            System.IO.FileInfo archivo = new System.IO.FileInfo(directorio);
            Console.WriteLine(archivo.DirectoryName);

            Negocio.Usuario negocioUsuario = new Negocio.Usuario(archivo.DirectoryName + @"\..\..\..\Archivos\usuarios.xml");
            negocioUsuario.Guarda(usuario);

            usuario =
                new Transferencia.Usuario()
                {
                    Id = 2,
                    Nombre = "Ponyito",
                    Apellido = "Barreraito",
                    Correo = "Ponyo@Ponyoito.cl",
                    FechaNac = DateTime.Now.AddYears(-10),
                    Sexo = "Masculino",
                    Username = "Ponyo"
                };

            negocioUsuario.Guarda(usuario);

            usuario =
                new Transferencia.Usuario()
                {
                    Id = 1,
                    Nombre = "Ponyito2",
                    Apellido = "Barreraito2",
                    Correo = "Ponyo@Ponyoito.cl2",
                    FechaNac = DateTime.Now.AddYears(-10),
                    Sexo = "Masculino",
                    Username = "Ponyo"
                };

            negocioUsuario.Guarda(usuario);
            negocioUsuario.Eliminar(1);
            negocioUsuario.Eliminar(2);
        }
    }
}
