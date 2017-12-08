
namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Error")]
    public class Error
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }


        [XmlElement("IdNivel", Type = typeof(long))]
        public long IdNivel { set; get; }

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
    }
}
