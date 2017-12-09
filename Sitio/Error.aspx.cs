using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Error : System.Web.UI.Page
{
    public class ErrorGrilla
    {
        public long Id { set; get; }
        public long IdFuncionalidad { set; get; }
        public long IdNivel { set; get; }
        public string Funcionalidad { set; get; }
        public string Nivel { set; get; }
        public string Codigo { set; get; }
        public string Nombre { set; get; }
        public string Descripcion { set; get; }
        public DateTime FechaCreacion { set; get; }
        public DateTime FechaActualizacion { set; get; }
    }

    [System.Web.Services.WebMethod]
    public static string ListaGrilla()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/errores.xml");
        List<ErrorGrilla> lista = new List<ErrorGrilla>();
        foreach(Transferencia.Error error in new Negocio.Error(rutaArchivo).Listar())
        {
            ErrorGrilla tmp = new ErrorGrilla()
            {
                Id = error.Id,
                IdFuncionalidad = error.IdFuncionalidad,
                IdNivel = error.IdNivel,
                Funcionalidad = new Negocio.Funcionalidad(HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml")).DeterminaNombre(error.IdFuncionalidad),
                Nivel = new Negocio.Nivel(HttpContext.Current.Server.MapPath("/Archivos/niveles.xml")).DeterminaNombre(error.IdNivel),
                Codigo = error.Codigo,
                Nombre = error.Nombre,
                Descripcion = error.Descripcion,
                FechaCreacion = error.FechaCreacion,
                FechaActualizacion = error.FechaActualizacion
            };

            lista.Add(tmp);
        }
        return JsonConvert.SerializeObject(lista);
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