
namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Log")]
    public class Log
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("Usuario", Type = typeof(string))]
        public string Usuario { set; get; }

        [XmlElement("Tipo", Type = typeof(string))]
        public string Tipo { set; get; }

        [XmlElement("SubTipo", Type = typeof(string))]
        public string SubTipo { set; get; }

        [XmlElement("Funcionalidad", Type = typeof(string))]
        public string Funcionalidad { set; get; }

        [XmlElement("Nivel", Type = typeof(string))]
        public string Nivel { set; get; }

        [XmlElement("Error", Type = typeof(string))]
        public string Error { set; get; }

        [XmlElement("Mensaje", Type = typeof(string))]
        public string Mensaje { set; get; }

        [XmlElement("FechaCreacion", Type = typeof(DateTime))]
        public DateTime FechaCreacion { set; get; }
    }
}
