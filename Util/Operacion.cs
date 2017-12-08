using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Serialization;

namespace Util
{
    public static class Operacion
    {
        public static string ObjetToString(Type tipo, object objeto)
        {
            string retorno = string.Empty;
            XmlSerializer xsSubmit = new XmlSerializer(tipo);

            using (var sww = new StringWriter())
            {
                using (XmlWriter writer = XmlWriter.Create(sww))
                {
                    xsSubmit.Serialize(writer, objeto);
                    retorno = sww.ToString(); 
                }
            }
            return retorno;
        }

        public static T StringToObject<T>(string xmlInformacion)
        {
            var reader = new StringReader(xmlInformacion);
            var serializer = new XmlSerializer(typeof(T));
            return (T)serializer.Deserialize(reader);
        }
    }
}
