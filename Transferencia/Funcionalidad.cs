
namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Funcionalidad")]
    class Funcionalidad
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("Codigo", Type = typeof(string))]
        public string CodigoTipo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string NombreTipo { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string DescripcionTipo { set; get; }
        
        [XmlElement("Creacion", Type = typeof(string))]
        public string Creacion { set; get; }

        [XmlElement("Actualizacion", Type = typeof(string))]
        public string Actualizacion { set; get; }

        [XmlElement("Estado", Type = typeof(string))]
        public string Estado { set; get; }
    
    }
}
