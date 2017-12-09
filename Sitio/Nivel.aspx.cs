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
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        return JsonConvert.SerializeObject(new Negocio.Nivel(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        return JsonConvert.SerializeObject(new Negocio.Nivel(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, long idFuncionalidad, string codigo, string nombre, string descripcion, string estado)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");

        Transferencia.Nivel nivel =
                new Transferencia.Nivel()
                {
                    Id = id,
                    IdFuncionalidad = idFuncionalidad, 
                    Codigo = codigo,
                    Nombre = nombre,
                    Descripcion = descripcion,
                    FechaCreacion = DateTime.Now,
                    FechaActualizacion = DateTime.Now
                };

        new Negocio.Nivel(rutaArchivo).Guarda(nivel);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        new Negocio.Nivel(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}