using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubTipo : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");
        return JsonConvert.SerializeObject(new Negocio.SubTipo(rutaArchivo).Listar());
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");
        return JsonConvert.SerializeObject(new Negocio.SubTipo(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, long idTipo, string codigo, string nombre, string descripcion, string estado)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");

        Transferencia.SubTipo subTipo =
                new Transferencia.SubTipo()
                {
                    Id = id,
                    IdTipo = idTipo,
                    Codigo = codigo,
                    Nombre = nombre,
                    Descripcion = descripcion,
                    FechaCreacion = DateTime.Now,
                    FechaActualizacion = DateTime.Now,
                    Estado = estado
                };

        new Negocio.SubTipo(rutaArchivo).Guarda(subTipo);
        return JsonConvert.SerializeObject(true);
    }

    [System.Web.Services.WebMethod]
    public static string Eliminar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");
        new Negocio.SubTipo(rutaArchivo).Eliminar(id);
        return JsonConvert.SerializeObject(true);
    }
}