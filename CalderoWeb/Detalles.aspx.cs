using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DominioCaldero;
using ServiceCaldero;

namespace CalderoWeb
{
    public partial class Detalles : System.Web.UI.Page
    {
        string fotosProdRemove = "C:\\Users\\Usuario\\Documents\\REPOSITORIOS\\ElCalderoChorreanteWeb\\CalderoWeb\\";
        Productos productoDetalles = new Productos();
        string pesos = "$ ARS";
        List<Productos> ListaProductoDetalle {get; set;}
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoService serviceProd = new ProductoService();

            // Recupero el ID enviado por URL
            int idNum = int.Parse(Request.QueryString["idprod"]);
            productoDetalles.Id = idNum;

            // Traigo el producto con una consulta, es un poco ilogico meterlo en una lista siendo uno solo
            // Por el momento es la solucion que tengo
            ListaProductoDetalle = serviceProd.ListarConDetalle(idNum);
            foreach (Productos prod in ListaProductoDetalle)
            {
                productoDetalles.Imagen = prod.Imagen;
                productoDetalles.Nombre = prod.Nombre;
                productoDetalles.Descripcion = prod.Descripcion;
                productoDetalles.Precio = prod.Precio;
            }

            // Quitar la raiz del path para que se muestre la imagen
            productoDetalles.Imagen = productoDetalles.Imagen.Replace(fotosProdRemove, "");
            // Mapeo
            imgProdDetalles.ImageUrl = productoDetalles.Imagen;
            imgProdDetallesMobile.ImageUrl = productoDetalles.Imagen;
            lblNombreProd.Text = productoDetalles.Nombre;
            lblNombreProdMobile.Text = productoDetalles.Nombre;
            lblDescripcionProd.Text = productoDetalles.Descripcion;
            lblDescripcionProdMobile.Text = productoDetalles.Descripcion;

            string precioPesos = productoDetalles.Precio.ToString();
            precioPesos = precioPesos + pesos;
            lblPrecioProd.Text = precioPesos;
            lblPrecioProdMobile.Text = precioPesos;
        }

        public void btnVolverDetalles_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductosPag.aspx");
        }
    }
}