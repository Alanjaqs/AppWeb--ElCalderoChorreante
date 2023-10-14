<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCaldero.Master" AutoEventWireup="true" CodeBehind="ProductosPag.aspx.cs" Inherits="CalderoWeb.ProductosPag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/styleProductosCC.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <h2 class="titlesPag">Categorías de productos:</h2>
    </div>        
    <!-- Categorias Cards -->
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            string fotosCatRemove = "C:\\Users\\Usuario\\Documents\\REPOSITORIOS\\ElCalderoChorreanteWeb\\CalderoWeb\\";
            foreach (DominioCaldero.Categoria categoria in ListaCategorias)
            {
                // Quitar la raiz de la URL de la imagen para que el navegador pueda leerla sin restricciones
                categoria.ImagenCat = categoria.ImagenCat.Replace(fotosCatRemove, "");
        %>              
                      <div class="col">
                        <div class="card">
                        <!-- Abajo llevo el Id de las categorias con el href utilizando ? para concatenarlo -->
                        <a class="linksCatProd" href="/Filtros.aspx?idcat=<%=categoria.IdCat %>">
                            <img src="<%= categoria.ImagenCat %>" class="card-img-top" alt="Categoria">
                            <div class="card-body">
                                <h4 class="card-title"><%: categoria.NombreCat %></h4>
                            </div>
                        </a>
                        </div>
                      </div>               
        <%
        }
        %>
        </div>
        <hr/>
    <div>
        <h2 class="titlesPag">Todos los productos:</h2>
    </div>
    <!-- Productos Cards -->
     <div class="row row-cols-1 row-cols-md-3 g-4">      
        <%
            string fotosProdRemove = "C:\\Users\\Usuario\\Documents\\REPOSITORIOS\\ElCalderoChorreanteWeb\\CalderoWeb\\";
            foreach (DominioCaldero.Productos producto in ListaProductos)
            {
                // Quitar la raiz de la URL de la imagen para que el navegador pueda leerla sin restricciones
                producto.Imagen = producto.Imagen.Replace(fotosProdRemove, "");
        %>              

                      <div class="col">
                        <div class="card h-100">
                        <!-- Abajo llevo el Id de los productos con el href utilizando ? para concatenarlo -->
                        <a class="linksCatProd" href="/Detalles.aspx?idprod=<%= producto.Id %>">
                         <img src="<%= producto.Imagen %>" class="card-img-top" alt="Categoria">
                            <div class="card-body">
                                <h4 class="card-title"><%: producto.Nombre %></h4>
                                 <p id="precioProd" class="card-text"><%: producto.Precio %>$ ARS</p>
                            </div>
                        </a>
                        </div>
                      </div>                
        <%
        }
        %>
        </div>



</asp:Content>
