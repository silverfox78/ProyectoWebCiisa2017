namespace Negocio
{
    using System.Collections.Generic;

    public class Log
    {
        private Base.Log Accesobase;

        public Log(string rutaArchivo)
        {
            this.Accesobase = new Base.Log(rutaArchivo);
        }

        public Transferencia.Log Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }

        public void Guarda(Transferencia.Log log)
        {
            this.Accesobase.Guardar(log);
        }

        public List<Transferencia.Log> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}
