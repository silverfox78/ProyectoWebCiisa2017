

namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Nivel")]
    class Nivel
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("IdNivel", Type = typeof(string))]
        public string IdNivel { set; get; }

        [XmlElement("Codigo", Type = typeof(string))]
        public string Codigo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string Nombre { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string Descripcion { set; get; }

        [XmlElement("Creacion", Type = typeof(string))]
        public string Creacion { set; get; }

        [XmlElement("Actualizacion", Type = typeof(string))]
        public string Actualizacion { set; get; }

      
    
    }
}
