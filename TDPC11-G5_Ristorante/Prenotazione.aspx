<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="Prenotazione.aspx.cs" Inherits="TDPC11_G5_Ristorante.Prenotazione" %>

<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
    <title>Nuova prenotazione</title>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">


    <div class="row ">
        <div class="col-12 ">
            <nav id="nav1" class="navbar fixed-top navbar-expand-lg navbar-primary shadow ">
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


    <div class="container-fluid">

        <form id="prenotazioni" runat="server">
            <div class="row mt-5 mb-5">
                <div class="col-10">
                    <asp:Label ID="LBLWelcome" runat="server" Class="Welcome float-lg-right mt-2"></asp:Label>
                </div>
                <div class="col-2">
                    <asp:Button ID="BTNLogout" runat="server" OnClick="BTNLogout_Click" Class="Welcome" Text="Logout" />
                </div>
            </div>


            <div class="row mt-5 mb-5">
                <div class="col-1  "></div>
                <div class="col-4  ">
                    <div id="formBox" class="">
                        <h1>Nuova prenotazione</h1>
                        <div id="formItem" class="form-group mt-5 mb-5">
                            <asp:ScriptManager ID="ScriptManagerCalendar" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanelCalendar" runat="server">
                                <ContentTemplate>
                                    <asp:Label ID="LabelDate" runat="server" Text="Scegli la data:"></asp:Label>
                                    <asp:TextBox ID="TextBoxDate" runat="server"
                                        Height="30"
                                        ReadOnly="true"
                                        Width="90px"></asp:TextBox>
                                    <asp:LinkButton ID="BTNCalendar" runat="server" OnClick="BTNCalendar_Click">Apri Calendario</asp:LinkButton>

                                    <asp:Calendar ID="Calendar" runat="server"
                                        BackColor="#FFFFCC"
                                        BorderColor="#FFCC66"
                                        BorderWidth="1px"
                                        DayNameFormat="Shortest"
                                        Font-Names="Verdana"
                                        Font-Size="8pt"
                                        ForeColor="#663399"
                                        Height="200px"
                                        ShowGridLines="True"
                                        Visible="false"
                                        Width="220px"
                                        OnSelectionChanged="Calendar_SelectionChanged">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div class="row mt-5 mb-5">
                                <p>Quanti coperti?:</p>
                                <asp:TextBox ID="TXTCoperti" runat="server" class="form-control w-25 d-block ml-5"></asp:TextBox>
                            </div>
                        </div>

                        <div id="formItemBtn" class="form-group">
                            <asp:Button ID="BTNSubmit" runat="server" Text="Prenota" OnClick="BTNSubmit_Click" />
                            <asp:Label ID="LBLOutput" runat="server">esito prenotazione..</asp:Label>
                        </div>

                    </div>
                </div>
                <div class="col-6">
                    <div id="formBox2" class="col-md-6 offset-md-6">
                        <h1>Le tue prenotazioni</h1>
                        <div id="formItem2" class="form-group">
                            <div class="row">
                                <asp:Table ID="TBLPrenotazioni" runat="server"></asp:Table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>
