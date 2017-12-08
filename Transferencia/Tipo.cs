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
    class Tipo
    {
        [XmlElement("IdTipo", Type = typeof(long))]
        public long IdTipo { set; get; }

        [XmlElement("CodigoTipo", Type = typeof(string))]
        public string CodigoTipo { set; get; }

        [XmlElement("NombreTipo", Type = typeof(string))]
        public string NombreTipo { set; get; }

        [XmlElement("DescripcionTipo", Type = typeof(string))]
        public string DescripcionTipo { set; get; }


        [XmlElement("FechCreacion", Type = typeof(string))]
        public string FechCreacion { set; get; }







    }
}
