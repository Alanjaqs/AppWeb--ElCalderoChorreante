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
    public partial class ProductosPag : System.Web.UI.Page
    {
        public List<Categoria> ListaCategorias { get; set; }
        public List<Productos> ListaProductos  { get; set; } 

        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Lista las categorias
            CategoriaService serviceCategorias = new CategoriaService();
            ListaCategorias = serviceCategorias.ListarCat();

            // Lista los productos
            ProductoService serviceProductos = new ProductoService();
            ListaProductos = serviceProductos.Listar(1);
        }
    }
}