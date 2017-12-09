using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tipo : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/tipos.xml");
        return JsonConvert.SerializeObject(new Negocio.Tipo(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/tipos.xml");
        return JsonConvert.SerializeObject(new Negocio.Tipo(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, string codigo, string nombre, string descripcion, string estado)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/tipos.xml");

        Transferencia.Tipo tipo =
                new Transferencia.Tipo()
                {
                    Id = id, 
                    Codigo = codigo,
                    Nombre = nombre,
                    Descripcion = descripcion,
                    FechaCreacion = DateTime.Now,
                    FechaActualizacion = DateTime.Now,
                    Estado = estado
                };

        new Negocio.Tipo(rutaArchivo).Guarda(tipo);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/tipos.xml");
        new Negocio.Tipo(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}