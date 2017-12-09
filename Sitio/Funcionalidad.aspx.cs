using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Funcionalidad : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml");
        return JsonConvert.SerializeObject(new Negocio.Funcionalidad(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml");
        return JsonConvert.SerializeObject(new Negocio.Funcionalidad(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, string codigo, string nombre, string descripcion, string estado)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml");

        Transferencia.Funcionalidad funcionalidad =
                new Transferencia.Funcionalidad()
                {
                    Id = id,                    
                    Codigo = codigo,
                    Nombre = nombre,
                    Descripcion = descripcion,
                    Estado = estado,
                    FechaCreacion = DateTime.Now,
                    FechaActualizacion = DateTime.Now
                };

        new Negocio.Funcionalidad(rutaArchivo).Guarda(funcionalidad);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml");
        new Negocio.Funcionalidad(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}