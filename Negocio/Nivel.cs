namespace Negocio
{
    using System.Collections.Generic;

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

        public void Guarda(Transferencia.Nivel nivel)
        {
            this.Accesobase.Guardar(nivel);
        }

        public List<Transferencia.Nivel> Listar()
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