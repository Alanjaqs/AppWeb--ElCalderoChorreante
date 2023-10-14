<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCaldero.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalderoWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/styleDefaultCC.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="titulo-carousel">
        <h1>Algunos de nuestros productos</h1>
    </div>
    <!-- Carousel Default I-->
     <section id="sectionCarousel">
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <asp:Panel id="divCarousel1" cssclass="carousel-item active" runat="server">
                    <asp:Image id="ImageCarousel1" cssclass="d-block w-100" alt="ProductoFoto1" runat="server" />
                </asp:Panel>
                <asp:Panel id="divCarousel2" cssclass="carousel-item" runat="server">
                    <asp:Image id="ImageCarousel2" cssclass="d-block w-100" alt="ProductoFoto1" runat="server" />
                </asp:Panel>
                <asp:Panel id="divCarousel3" cssclass="carousel-item" runat="server">
                    <asp:Image id="ImageCarousel3" cssclass="d-block w-100" alt="ProductoFoto1" runat="server" />
                </asp:Panel>
            </div>
        </div>

         <div id="infoCarouselImages">
             <asp:Label id="lblNombreCarouselImages1" runat="server" Text="Label"></asp:Label>
             <asp:Label id="lblNombreCarouselImages2" runat="server" Text="Label"></asp:Label>
             <asp:Label id="lblNombreCarouselImages3" runat="server" Text="Label"></asp:Label>
             <asp:Button ID="btnCatalogo" runat="server" Text="Ver catálago" OnClick="btnCatalogo_Click"/>
         </div>
    </section>
    <!-- Carousel Default F-->

    <!-- Main Default I-->
    <section id="sectionMainDefault">
        <asp:Label cssclass="mainDefault" ID="lblMainDefault1" runat="server" Text="Label">Hola, somos dos hermanas con un emprendimiento de productos de bazar y regaleria</asp:Label>
        <asp:Label cssclass="mainDefault" ID="lblMainDefault2" runat="server" Text="Label">Por el momento solo hacemos entregas en la ciudad de Monte Grande en puntos de encuentro</asp:Label>
    </section>
    <!-- Main Default F-->

    
</asp:Content>
