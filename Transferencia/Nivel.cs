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

        [XmlElement("IdFuncionalidad", Type = typeof(long))]
        public long IdFuncionalidad { set; get; }

        [XmlElement("Codigo", Type = typeof(string))]
        public string CodigoTipo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string NombreTipo { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string DescripcionTipo { set; get; }

        [XmlElement("FechaCreacion", Type = typeof(DateTime))]
        public DateTime FechCreacion { set; get; }

        [XmlElement("FechaActualizacion", Type = typeof(DateTime))]
        public DateTime FechaActualizacion { set; get; }
    }
}
