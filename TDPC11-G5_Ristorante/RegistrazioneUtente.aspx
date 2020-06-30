<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="RegistrazioneUtente.aspx.cs" Inherits="TDPC11_G5_Ristorante.RegistrazioneUtente" %>


<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
    <title>Registrazione nuovo utente</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">

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
                <asp:Label ID="Message" runat="server"></asp:Label>
            </div>
        </form>
    </div>


</asp:Content>


<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>
