using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class Error
    {
        private Base.Error Accesobase;

        public Error(string rutaArchivo)
        {
            this.Accesobase = new Base.Error(rutaArchivo);
        }

        public Transferencia.Error Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }
        
        public void Guarda(Transferencia.Error usuario)
        {
            this.Accesobase.Guardar(usuario);
        }

        public List<Transferencia.Error> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}
