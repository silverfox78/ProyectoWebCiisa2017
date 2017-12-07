using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio.Transferencia
{
    public class Usuario
    {
        public long Id { set; get; }
        public string Username { set; get; }
        public string Nombre { set; get; }
        public string Apellido { set; get; }
        public string Correo { set; get; }
        public DateTime FechaNac { set; get; }
        public string Sexo { set; get; }
    }
}
