using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceCaldero;



namespace CalderoWeb
{
    public partial class Default : System.Web.UI.Page
    {
        // Carousel I //
        public List<string> fotosRandom = new List<string>();
        string fotoRandomUno, fotoRandomDos, fotoRandomTres;
        string fotosRandomRemove = "C:\\Users\\Usuario\\Documents\\REPOSITORIOS\\ElCalderoChorreanteWeb\\CalderoWeb\\";
        // Carousel F //
        public List<string> ListarTresFotosRandom()
        {
            List<string> lista = new List<string>();
            AccesoDatos datos = new AccesoDatos();

            datos.SetearConsulta("select top 3 ImagenProd, NombreProd from Productos order by NEWID()");
            datos.EjecutarLectura();
            while (datos.Lector.Read())
            {
                string fotoUrl = (string)datos.Lector["ImagenProd"];
                string nombre = (string)datos.Lector["NombreProd"];
                lista.Add(fotoUrl);
                lista.Add(nombre);
            }
                return lista;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // Carousel I //
            fotosRandom = ListarTresFotosRandom();
            fotoRandomUno = fotosRandom[0];
            fotoRandomDos = fotosRandom[2];
            fotoRandomTres = fotosRandom[4];

            // Quitar la raiz de la URL de la imagen para que el navegador pueda leerla sin restricciones
            fotoRandomUno = fotoRandomUno.Replace(fotosRandomRemove, "");
            fotoRandomDos = fotoRandomDos.Replace(fotosRandomRemove, "");
            fotoRandomTres = fotoRandomTres.Replace(fotosRandomRemove, "");

            ImageCarousel1.ImageUrl = fotoRandomUno;
            ImageCarousel2.ImageUrl = fotoRandomDos;
            ImageCarousel3.ImageUrl = fotoRandomTres;

    
            lblNombreCarouselImages1.Text = fotosRandom[1];
             
   
            lblNombreCarouselImages2.Text = fotosRandom[3];
              
    
            lblNombreCarouselImages3.Text = fotosRandom[5];

            // Carousel F //

            
        }

        protected void btnCatalogo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductosPag.aspx");
        }
    }
}