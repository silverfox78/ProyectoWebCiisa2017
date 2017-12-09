using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SubTipo : System.Web.UI.Page
{
    public class SubTipoGrilla
    {
        public long Id { set; get; }
        public long IdTipo { set; get; }
        public string Tipo{ set; get; }
        public string Codigo { set; get; }
        public string Nombre { set; get; }
        public string Descripcion { set; get; }
        public string Estado { set; get; }
        public DateTime FechaCreacion { set; get; }
        public DateTime FechaActualizacion { set; get; }
    }

    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");
        List<SubTipoGrilla> lista = new List<SubTipoGrilla>();
        foreach (Transferencia.SubTipo subtipo in new Negocio.SubTipo(rutaArchivo).Listar())
        {
            SubTipoGrilla tmp = new SubTipoGrilla()
            {
                Id = subtipo.Id,
                IdTipo = subtipo.IdTipo,
                Tipo = new Negocio.Tipo(HttpContext.Current.Server.MapPath("/Archivos/tipos.xml")).DeterminaNombre(subtipo.IdTipo),
                Codigo = subtipo.Codigo,
                Nombre = subtipo.Nombre,
                Descripcion = subtipo.Descripcion,
                Estado = subtipo.Estado,
                FechaCreacion = subtipo.FechaCreacion,
                FechaActualizacion = subtipo.FechaActualizacion
            };
            lista.Add(tmp);
        }

        return JsonConvert.SerializeObject(lista);
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

    [System.Web.Services.WebMethod]
    public static string ListaSubTiposPorTipo(long idTipo)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml");
        List<Transferencia.SubTipo> lista = new List<Transferencia.SubTipo>();
        foreach (Transferencia.SubTipo subtipo in new Negocio.SubTipo(rutaArchivo).Listar())
        {
            if (subtipo.IdTipo == idTipo) {
                lista.Add(subtipo);
            }
        }

        return JsonConvert.SerializeObject(lista);
    }
}