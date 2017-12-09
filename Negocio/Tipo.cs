namespace Negocio
{
    using System.Collections.Generic;

    public class Tipo
    {
        private Base.Tipo Accesobase;

        public Tipo(string rutaArchivo)
        {
            this.Accesobase = new Base.Tipo(rutaArchivo);
        }

        public Transferencia.Tipo Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }

        public void Guarda(Transferencia.Tipo usuario)
        {
            this.Accesobase.Guardar(usuario);
        }

        public List<Transferencia.Tipo> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}
