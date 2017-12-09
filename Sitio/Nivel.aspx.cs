using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Nivel : System.Web.UI.Page
{
    public class NivelGrilla
    {
        public long Id { set; get; }
        public long IdFuncionalidad { set; get; }
        public string Funcionalidad { set; get; }
        public string Codigo { set; get; }
        public string Nombre { set; get; }
        public string Descripcion { set; get; }
        public DateTime FechaCreacion { set; get; }
        public DateTime FechaActualizacion { set; get; }
    }

    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        List<NivelGrilla> lista = new List<NivelGrilla>();
        foreach(Transferencia.Nivel nivel in new Negocio.Nivel(rutaArchivo).Listar())
        {
            NivelGrilla tmp = new NivelGrilla()
            {
                Id = nivel.Id,
                IdFuncionalidad = nivel.IdFuncionalidad,
                Funcionalidad = new Negocio.Funcionalidad(HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml")).DeterminaNombre(nivel.IdFuncionalidad),
                Codigo = nivel.Codigo,
                Nombre = nivel.Nombre,
                Descripcion = nivel.Descripcion,
                FechaCreacion = nivel.FechaCreacion,
                FechaActualizacion = nivel.FechaActualizacion
            };
            lista.Add(tmp);
        }

        return JsonConvert.SerializeObject(lista);
    }

    [System.Web.Services.WebMethod]
    public static string ListaNivelesPorFuncionalidad(long idFuncionalidad)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        List<Transferencia.Nivel> lista = new List<Transferencia.Nivel>();
        foreach (Transferencia.Nivel nivel in new Negocio.Nivel(rutaArchivo).Listar())
        {
            if(nivel.IdFuncionalidad == idFuncionalidad)
            {
                lista.Add(nivel);
            }
        }
        return JsonConvert.SerializeObject(lista);
    }

    [System.Web.Services.WebMethod]
    public static string Buscar(long id)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/niveles.xml");
        return JsonConvert.SerializeObject(new Negocio.Nivel(rutaArchivo).Buscar(id));
    }

    [System.Web.Services.WebMethod]
    public static string Guardar(long id, long idFuncionalidad, string codigo, string nombre, string descripcion)
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