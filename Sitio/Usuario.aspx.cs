using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usuario : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml");
        return JsonConvert.SerializeObject(new Negocio.Usuario(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml");
        Transferencia.Usuario usuario =
                new Transferencia.Usuario()
                {
                    Id = 1,
                    Nombre = "Pony0",
                    Apellido = "Barrera",
                    Correo = "Ponyo@Ponyo.cl",
                    FechaNac = DateTime.Now.AddYears(-10),
                    Sexo = "Masculino",
                    Username = "Ponyo"
                };

        new Negocio.Usuario(rutaArchivo).Guarda(usuario);
        return JsonConvert.SerializeObject(new Negocio.Usuario(rutaArchivo).Buscar(id));
    }
}