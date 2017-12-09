using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public class Totales
    {
        public int CantidadUsuariosHombres { set; get; }
        public int CantidadUsuariosMujeres { set; get; }
        public int CantidadLogs { set; get; }
        public int CantidadTipos { set; get; }
        public int CantidadSubTipos { set; get; }
        public int CantidadFuncionalidades { set; get; }
        public int CantidadNiveles { set; get; }
    }

    [System.Web.Services.WebMethod]
    public static string InfoTotales()
    {
        int hombre = 0;
        int mujeres = 0;
        foreach(Transferencia.Usuario usuario in new Negocio.Usuario(HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml")).Listar())
        {
            if(usuario.Sexo == "Masculino")
            {
                hombre++;
            }
            else
            {
                mujeres++;
            }
        }

        Totales totales = new Totales()
        {
            CantidadUsuariosHombres = hombre,
            CantidadUsuariosMujeres = mujeres, 
            CantidadFuncionalidades = new Negocio.Funcionalidad(HttpContext.Current.Server.MapPath("/Archivos/funcionalidades.xml")).Listar().Count,
            CantidadLogs = 0,
            CantidadNiveles = new Negocio.Nivel(HttpContext.Current.Server.MapPath("/Archivos/niveles.xml")).Listar().Count,
            CantidadSubTipos = new Negocio.SubTipo(HttpContext.Current.Server.MapPath("/Archivos/subtipos.xml")).Listar().Count,
            CantidadTipos = new Negocio.Tipo(HttpContext.Current.Server.MapPath("/Archivos/tipos.xml")).Listar().Count
        };

        return JsonConvert.SerializeObject(totales);
    }

    [System.Web.Services.WebMethod]
    public static string GuardaLog(string usuario, string tipo, string subtipo, string funcionalidad, string nivel, string error, string mensaje)
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/logs.xml");

        Transferencia.Log log =
                new Transferencia.Log()
                {
                    Id = 0,
                    Usuario = usuario,
                    Tipo = tipo,
                    SubTipo = subtipo,
                    Funcionalidad = funcionalidad,
                    Nivel = nivel,
                    Error = error,
                    Mensaje = mensaje,
                    FechaCreacion = DateTime.Now
                };

        new Negocio.Log(rutaArchivo).Guarda(log);
        return JsonConvert.SerializeObject(true);
    }

    public class LogDetalle
    {
        public string Cabecera { set; get; }
        public string Mensaje { set; get; }
        public string Fecha { set; get; }
    }

    [System.Web.Services.WebMethod]
    public static string ListarLog()
    {
        string rutaArchivo = HttpContext.Current.Server.MapPath("/Archivos/logs.xml");
        List<LogDetalle> lista = new List<LogDetalle>();
        foreach (Transferencia.Log log in new Negocio.Log(rutaArchivo).Listar().OrderByDescending(x => x.FechaCreacion).Take(5))
        {
            Transferencia.Usuario user =new Negocio.Usuario(HttpContext.Current.Server.MapPath("/Archivos/usuarios.xml")).Buscar(long.Parse(log.Usuario));
            string usuario = user.Nombre + " " + user.Apellido;
            Transferencia.Tipo tipoTr = new Negocio.Tipo(HttpContext.Current.Server.MapPath("/Archivos/tipos.xml")).Buscar(long.Parse(log.Tipo));
            string tipo = tipoTr.Nombre;
            LogDetalle tmp = new LogDetalle()
            {
                Cabecera = usuario + " - " + tipo,
                Mensaje = log.Mensaje,
                Fecha = log.FechaCreacion.ToString("dd/MM/yyyy hh:mm:ss")
            };

            lista.Add(tmp);
        }

        return JsonConvert.SerializeObject(lista);
    }
}