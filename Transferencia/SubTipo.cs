﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Transferencia
{

    using System;
    using System.Xml.Serialization;

    [Serializable]
    [XmlRoot("SubTipo")]
  public class SubTipo
    {
        [XmlElement("Id", Type = typeof(long))]
        public long Id { set; get; }

        [XmlElement("IdTipo", Type = typeof(long))]
        public long IdTipo { set; get; }

        [XmlElement("Codigo", Type = typeof(string))]
        public string CodigoTipo { set; get; }

        [XmlElement("Nombre", Type = typeof(string))]
        public string NombreTipo { set; get; }

        [XmlElement("Descripcion", Type = typeof(string))]
        public string DescripcionTipo { set; get; }

        [XmlElement("FechaCreacion", Type = typeof(DateTime))]
        public string FechCreacion { set; get; }

        [XmlElement("FechaActualizacion", Type = typeof(DateTime))]
        public DateTime FechaActualizacion { set; get; }

        [XmlElement("Estado", Type = typeof(string))]
        public string Estado { set; get; }
    }
}
