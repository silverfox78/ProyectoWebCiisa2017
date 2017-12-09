using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Tipo")]
    public class Tipo
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("Codigo", Type = typeof(string))]
        public string Codigo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string Nombre { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string Descripcion { set; get; }
        
        [XmlElement("FechaCreacion", Type = typeof(DateTime))]
        public DateTime FechaCreacion { set; get; }

        [XmlElement("FechaActualizacion", Type = typeof(DateTime))]
        public DateTime FechaActualizacion { set; get; }

        [XmlElement("Estado", Type = typeof(string))]
        public string Estado { set; get; }
    }
}
