namespace Negocio
{
    using System;
    using System.Collections.Generic;

    public class Usuario
    {
        private Base.Usuario baseUsuario;

        public Usuario(string rutaArchivo)
        {
            this.baseUsuario = new Base.Usuario(rutaArchivo);
        }

        public Transferencia.Usuario Buscar(long id)
        {
            return this.baseUsuario.Buscar(id);
        }

        public void Eliminar(long id)
        {
            this.baseUsuario.Eliminar(id);
        }

        public List<Transferencia.Usuario> GeneraGrilla()
        {
            List<Transferencia.Usuario> retorno = new List<Transferencia.Usuario>();

            try
            {
                for (int i = 0; i < 25; i++)
                {
                    retorno.Add(
                        new Transferencia.Usuario()
                        {
                            Id = Faker.RandomNumber.Next(1000000, 25000000),
                            Nombre = Faker.Name.First(),
                            Apellido = Faker.Name.Last(),
                            Correo = Faker.Internet.Email(),
                            FechaNac = DateTime.Now.AddDays(Faker.RandomNumber.Next(-365 * 20, 0)),
                            Username = Faker.Internet.UserName(),
                            Sexo = Faker.RandomNumber.Next(0, 1) == 0 ? "Masculino" : "Femenino"
                        }
                    );
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error al generar la grilla - Error: " + ex.Message, ex);
            }

            return retorno;
        }

        public void Guarda(Transferencia.Usuario usuario)
        {
            this.baseUsuario.Guardar(usuario);
        }

        public List<Transferencia.Usuario> Listar()
        {
            return this.baseUsuario.Listar();
        }
    }
}