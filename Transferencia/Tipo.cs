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
        public string CodigoTipo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string NombreTipo { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string DescripcionTipo { set; get; }
        
        [XmlElement("FechaCreacion", Type = typeof(string))]
        public string FechCreacion { set; get; }

        [XmlElement("FechaCreacion", Type = typeof(string))]
        public string FechCareacion { set; get; }

        [XmlElement("FechaActualizacion", Type = typeof(string))]
        public string FechaActualizacion { set; get; }

        [XmlElement("Estado", Type = typeof(string))]
        public string Estado { set; get; }
    }
}
