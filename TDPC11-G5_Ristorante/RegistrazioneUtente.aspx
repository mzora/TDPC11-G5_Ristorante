<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="RegistrazioneUtente.aspx.cs" Inherits="TDPC11_G5_Ristorante.RegistrazioneUtente" %>


<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
        <title>Registrazione nuovo utente</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">
        <form id="form1" runat="server">
        <div class="container col-12">
            <div class="row">
                <div class="col-4">
                    Inserisci il tuo Cognome:
                   <asp:TextBox ID="TXTCognome" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    Inserisci il tuo Nome:
                   <asp:TextBox ID="TextNome" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    Email:
                   <asp:TextBox ID="TXTEmail" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            
            <div class="row">
                <div class="col-4">
                    Telefono:
                   <asp:TextBox ID="TXTPhone" runat="server" class="form-control"></asp:TextBox>
                </div>
            </div>
            
            <div class="row">
                <div class="col-4">
                    Username:
                   <asp:TextBox ID="TXTUsr" runat="server" class="form-control"></asp:TextBox>
                </div>
                <div class="col-4">
                    Password:
                     <asp:TextBox ID="TXTPsw" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <asp:Button ID="BTNSubmit" runat="server" Text="Submit" OnClick="BTNSubmit_Click" class="btn btn-sm btn-success" />
                </div>
            </div>
        </div>
    </form>
    
</asp:Content>


<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>