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
        return JsonConvert.SerializeObject(new Negocio.Usuario(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, string apellido, string correo, string fechaNac, string nombre, string sexo, string username)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml");

        Transferencia.Usuario usuario =
                new Transferencia.Usuario()
                {
                    Id = id,
                    Nombre = nombre,
                    Apellido = apellido,
                    Correo = correo,
                    FechaNac = DateTime.Parse(fechaNac),
                    Sexo = sexo,
                    Username = username
                };

        new Negocio.Usuario(rutaArchivo).Guarda(usuario);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml");
        new Negocio.Usuario(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}