﻿namespace Negocio
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

        public void Guarda(Transferencia.Funcionalidad usuario)
        {
            this.Accesobase.Guardar(usuario);
        }

        public List<Transferencia.Funcionalidad> Listar()
        {
            return this.Accesobase.Listar();
        }
    }
}