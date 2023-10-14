<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCaldero.Master" AutoEventWireup="true" CodeBehind="Filtros.aspx.cs" Inherits="CalderoWeb.Filtros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/styleFiltrosCC.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="divBtnVolver">
        <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click"/>
    </div> 
    <div class="row row-cols-1 row-cols-md-3 g-4">

         <%
            string fotosProdRemove = "C:\\Users\\Usuario\\Documents\\REPOSITORIOS\\ElCalderoChorreanteWeb\\CalderoWeb\\";
            foreach (DominioCaldero.Productos producto in ListaProductosFiltrado)
            {
                // Quitar la raiz de la URL de la imagen para que el navegador pueda leerla sin restricciones
                producto.Imagen = producto.Imagen.Replace(fotosProdRemove, "");
        %>              

                      <div class="col">
                        <div class="card h-100">
                        <!-- Abajo llevo el Id de los productos con el href utilizando ? para concatenarlo -->
                        <a class="linksProd" href="/Detalles.aspx?idprod=<%= producto.Id %>">
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
