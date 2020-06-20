<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="Default.aspx.cs" Inherits="TDPC11_G5_Ristorante.Default" %>

<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server"></asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">
     <form id="validateLogin" runat="server">
        <div class="container col-12 no-gutters">
            <div id="formBox" class="col-sm-2 offset-sm-10">
                <div id="formItem" class="form-group">
                    <asp:TextBox id="TXTUser" runat="server" CssClass="form-control">Username</asp:TextBox>
                </div>
                <div id="formItem" class="form-group">
                    <asp:TextBox id="TXTPsw" runat="server" CssClass="form-control">Password</asp:TextBox>
                </div>
                <div id="formItemBtn" class="form-group">
                    <asp:Button id="BTNSubmit" runat="server" Text="Effettua il login" OnCLick="BTNSubmit_CLick" CssClass="btn btn-link" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>

<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server">

</asp:Content>