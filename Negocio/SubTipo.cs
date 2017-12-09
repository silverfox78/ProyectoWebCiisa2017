namespace Negocio
{
    using System.Collections.Generic;

    public class SubTipo
    {
        private Base.SubTipo Accesobase;

        public SubTipo(string rutaArchivo)
        {
            this.Accesobase = new Base.SubTipo(rutaArchivo);
        }

        public Transferencia.SubTipo Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }

        public void Guarda(Transferencia.SubTipo subtipo)
        {
            this.Accesobase.Guardar(subtipo);
        }

        public List<Transferencia.SubTipo> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}
