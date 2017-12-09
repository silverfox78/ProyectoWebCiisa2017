﻿
namespace Base
{
    using System.Collections.Generic;
    using System.IO;
    using System.Linq;
    using System.Text;

    public class Nivel : ComunBase
    {
        private List<Transferencia.Nivel> lista;

        public Nivel(string rutaArchivo) : base(rutaArchivo)
        {
            this.Carga();
        }

        public Transferencia.Nivel Buscar(long id)
        {
            int indice = this.lista.FindIndex(e => e.Id == id);
            return indice < 0 ? null : this.lista.ElementAt(indice);
        }

        public void Eliminar(long id)
        {
            int indice = this.lista.FindIndex(e => e.Id == id);
            this.lista.RemoveAt(indice);
            this.ActualizaOrigen();
        }

        public bool Existe(Transferencia.Nivel objeto)
        {
            return this.lista != null ? !(this.lista.FindIndex(e => e.Id == objeto.Id) < 0) : false;
        }

        public void Guardar(Transferencia.Nivel objeto)
        {
            if (!this.Existe(objeto))
            {
                objeto.Id = this.DeterminaSiguiente();
                this.lista.Add(objeto);
            }
            else
            {
                int indice = this.lista.FindIndex(e => e.Id == objeto.Id);
                this.lista.RemoveAt(indice);
                this.lista.Insert(indice, objeto);
            }
            this.ActualizaOrigen();
        }

        public List<Transferencia.Nivel> Listar()
        {
            return this.lista;
        }

        private long DeterminaSiguiente()
        {
            long retorno = 0;
            if (!this.lista.Any())
            {
                return 1;
            }

            foreach (Transferencia.Nivel tmp in this.lista)
            {
                if (retorno < tmp.Id)
                {
                    retorno = tmp.Id;
                }
            }

            return retorno + 1;
        }

        protected void ActualizaOrigen()
        {
            using (FileStream fcreate = File.Open(this.rutaArchivo, FileMode.Create))
            {
                string dataasstring = Util.Operacion.ObjetToString(this.lista.GetType(), this.lista);
                byte[] info = new UTF8Encoding(true).GetBytes(dataasstring);
                fcreate.Write(info, 0, info.Length);
            }
        }

        protected void Carga()
        {
            if (new System.IO.FileInfo(this.rutaArchivo).Exists)
            {
                string xml = File.ReadAllText(this.rutaArchivo);
                this.lista = Util.Operacion.StringToObject<List<Transferencia.Nivel>>(xml);
            }
            else
            {
                this.lista = new List<Transferencia.Nivel>();
                this.ActualizaOrigen();
            }
        }
    }
}
