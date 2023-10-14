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
    public partial class Filtros : System.Web.UI.Page
    {
        public List<Productos> ListaProductosFiltrado = new List<Productos>();
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductoService serviceProductos = new ProductoService();

            // Recuperar valor que viene por URL para filtrar
            string idcatString = Request.QueryString["idcat"];
            int idcatNum = int.Parse(idcatString);
        
            ListaProductosFiltrado = serviceProductos.ListarConFiltro(idcatNum);
        }

        public void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductosPag.aspx");
        }
    }
}