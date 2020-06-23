<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="Default.aspx.cs" Inherits="TDPC11_G5_Ristorante.Default" %>

<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
        <title>Homepage Ristorante</title>  
</asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">
     <form id="validateLogin" runat="server">
        <div class="container col-12 no-gutters">
            <div id="formBox" class="col-sm-2 offset-sm-10">
                <div id="formItem" class="form-group">
                    Digita il tuo Username:
                    <asp:TextBox id="TXTUser" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div id="formItem1" class="form-group">
                    Digita la tua password:
                    <asp:TextBox id="TXTPsw" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div id="formItemBtn" class="form-group">
                    <asp:Button id="BTNSubmit" runat="server" Text="Login per prenotare" OnCLick="BTNSubmit_CLick" CssClass="btn btn-link" /> 
                    <asp:Button id="BTNReg" runat="server" Text="Registrati" OnCLick="BTNReg_CLick" CssClass="btn btn-link" />
                </div>
                <asp:Label ID="LBLOutput" runat="server"></asp:Label>
            </div>
        </div>
    </form>
    
    <h1 class="text-center">Menu del giorno</h1>>
    
    <div class="list-group col-sm-6 offset-sm-3">
      <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-around">
          <h3 class="mb-1">Bucatini all'Amatriciana</h3>
          <small>5.50 Euro</small>
        </div>
        <p class="mb-1">Sugo con salsa di pomodoro, aglio, olio extravergine di oliva, pancetta e pecorino</p>
        <small>Specialità romana</small>
      </a>
        
      <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1">List group item heading</h5>
          <small class="text-muted">3 days ago</small>
        </div>
        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
        <small class="text-muted">Donec id elit non mi porta.</small>
      </a>
        
      <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
        <div class="d-flex w-100 justify-content-between">
          <h5 class="mb-1">List group item heading</h5>
          <small class="text-muted">3 days ago</small>
        </div>
        <p class="mb-1">Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit.</p>
        <small class="text-muted">Donec id elit non mi porta.</small>
      </a>
    </div> 
</asp:Content> 

<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>