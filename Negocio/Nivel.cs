using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Nivel
    {
        private Base.Nivel Accesobase;

        public Nivel(string rutaArchivo)
        {
            this.Accesobase = new Base.Nivel(rutaArchivo);
        }

        public Transferencia.Nivel Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }

        public void Guarda(Transferencia.Nivel usuario)
        {
            this.Accesobase.Guardar(usuario);
        }

        public List<Transferencia.Nivel> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}
