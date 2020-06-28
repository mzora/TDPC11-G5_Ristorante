<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="RegistrazioneUtente.aspx.cs" Inherits="TDPC11_G5_Ristorante.RegistrazioneUtente" %>


<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
    <title>Registrazione nuovo utente</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">
    <div class="row ">
        <div class="col-12 ">
            <nav id="nav1" class="navbar fixed-top navbar-expand-lg navbar-primary shadow">
                <a class="navbar-brand" href="#">
                    <h1><b>La Grotta Di Carmelo</b></h1>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Default.aspx">
                                <h3>Home</h3>
                                <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Eventi.aspx">
                                <h3>Eventi</h3>
                                <span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Contatti.aspx">
                                <h3>Contatti</h3>
                                <span class="sr-only">(current)</span></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <div class="row justify-content-center">
        <h2>Entra a far parte della nostra Community</h2>
    </div>

    <div class="row justify-content-center ">
        <form id="form1" runat="server">
            <div class="row">
                <asp:TextBox ID="TXTNome" placeholder="Nome" runat="server" class="form-control m-2">  </asp:TextBox>
            </div>
            <div class="row">
                <asp:TextBox ID="TXTCognome" placeholder="Cognome" runat="server" class="form-control m-2"></asp:TextBox>
            </div>

            <div class="row">
                <asp:TextBox ID="TXTEmail" placeholder="Email" runat="server" class="form-control m-2"></asp:TextBox>
            </div>
            <div class="row">
                <asp:TextBox ID="TXTPhone" placeholder="Telefono" runat="server" class="form-control m-2"></asp:TextBox>
            </div>
            <div class="row">
                <asp:TextBox ID="TXTUsr" placeholder="Scegli Username" runat="server" class="form-control m-2"></asp:TextBox>
            </div>
            <div class="row">
                <asp:TextBox ID="TXTPsw" placeholder="Scegli Password" runat="server" TextMode="Password" class="form-control m-2"></asp:TextBox>
            </div>
            <div class="row justify-content-center">
                <asp:Button ID="BTNSubmit" runat="server" Text="Registrati" OnClick="BTNSubmit_Click" class="btn btn-sm btn-secondary m-2" />
            </div>
        </form>
    </div>


</asp:Content>


<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>
