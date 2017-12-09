namespace Negocio
{
    using System.Collections.Generic;

    public class Funcionalidad
    {
        private Base.Funcionalidad Accesobase;

        public Funcionalidad(string rutaArchivo)
        {
            this.Accesobase = new Base.Funcionalidad(rutaArchivo);
        }

        public Transferencia.Funcionalidad Buscar(long id)
        {
            return this.Accesobase.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.Accesobase.Eliminar(id);
        }

        public void Guarda(Transferencia.Funcionalidad funcionalidad)
        {
            this.Accesobase.Guardar(funcionalidad);
        }

        public List<Transferencia.Funcionalidad> Listar()
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