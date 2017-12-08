namespace Transferencia
{
    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("Usuario")]
    public class Usuario
    {
        [XmlElement("Apellido", Type = typeof(string))]
        public string Apellido { set; get; }

        [XmlElement("Correo", Type = typeof(string))]
        public string Correo { set; get; }

        [XmlElement("FechaNac", Type = typeof(DateTime))]
        public DateTime FechaNac { set; get; }

        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string Nombre { set; get; }

        [XmlElement("Sexo", Type = typeof(string))]
        public string Sexo { set; get; }

        [XmlElement("Username", Type = typeof(string))]
        public string Username { set; get; }
    }
}