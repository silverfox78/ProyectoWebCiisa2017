namespace Negocio
{
    using System.Collections.Generic;

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

        public void Guarda(Transferencia.Error error)
        {
            this.Accesobase.Guardar(error);
        }

        public List<Transferencia.Error> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}