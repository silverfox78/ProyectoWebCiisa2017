using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/errores.xml");
        return JsonConvert.SerializeObject(new Negocio.Error(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/errores.xml");
        return JsonConvert.SerializeObject(new Negocio.Error(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, long idNivel, string codigo, string nombre, string descripcion)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/errores.xml");

        Transferencia.Error error =
                new Transferencia.Error()
                {
                    Id = id,
                    IdNivel = idNivel,
                    Nombre = nombre,
                    Codigo = codigo, 
                    Descripcion = descripcion, FechaCreacion = DateTime.Now,
                    FechaActualizacion = DateTime.Now                     
                };

        new Negocio.Error(rutaArchivo).Guarda(error);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/errores.xml");
        new Negocio.Error(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}