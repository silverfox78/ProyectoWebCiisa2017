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

        public void Guarda(Transferencia.Tipo tipo)
        {
            this.Accesobase.Guardar(tipo);
        }

        public List<Transferencia.Tipo> Listar()
        {
            return this.Accesobase.Listar();
        }

        public string DeterminaNombre(long id)
        {
            try
            {
                return this.Buscar(id).Nombre;
            }
            catch
            {
                return "No Encontrado";
            }
        }
    }
}
