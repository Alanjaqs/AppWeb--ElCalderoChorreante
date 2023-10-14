<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCaldero.Master" AutoEventWireup="true" CodeBehind="Detalles.aspx.cs" Inherits="CalderoWeb.Detalles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/styleDetallesCC.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="divBtnVolverDetalles">
        <asp:Button ID="btnVolverDetalles" runat="server" Text="Volver" OnClick="btnVolverDetalles_Click" />
    </div>

    <!-- DESKTOP -->
    <section id="SectionDetallesProd">
        <div id="divImgDetalles">
            <asp:Image ID="imgProdDetalles" alt="FotoProducto" runat="server" />
        </div>

        <div id="divInfoProd">
            <asp:Label ID="lblNombreProd" runat="server" Text="Nombre"></asp:Label>
            <asp:Label ID="lblDescripcionProd" runat="server" Text="Descripcion"></asp:Label>
            <asp:Label ID="lblPrecioProd" runat="server" Text="Precio"></asp:Label>
            <div id="divConsultar">
                <a href="https://wa.me/1136691305/?text= +Buen dia, estoy interesado/a en <%= lblNombreProd.Text %>" target="_blank">
                    <img src="Icons/wppPropIconP.png" id="wppIconPurple"/>
                </a>
            </div>
        </div>
    </section>

    <!-- MOBILE -->
    <section id="SectionDetallesProdMobile">
        <div id="divImgDetallesMobile">
            <asp:Image ID="imgProdDetallesMobile" alt="FotoProducto" runat="server" />
        </div>

        <div id="divInfoProdMobile">
            <asp:Label ID="lblNombreProdMobile" runat="server" Text="Nombre"></asp:Label>
            <asp:Label ID="lblDescripcionProdMobile" runat="server" Text="Descripcion"></asp:Label>
            <asp:Label ID="lblPrecioProdMobile" runat="server" Text="Precio"></asp:Label>
            <div id="divConsultarMobile">
                <a href="https://wa.me/1136691305/?text= +Buen dia, estoy interesado/a en <%= lblNombreProd.Text %>" target="_blank">
                    <img src="Icons/wppPropIconP.png" id="wppIconPurpleMobile"/>
                </a>
            </div>
        </div>
    </section>




</asp:Content>
