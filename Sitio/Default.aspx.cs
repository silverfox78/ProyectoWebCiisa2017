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

}