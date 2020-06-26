<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="Prenotazione.aspx.cs" Inherits="TDPC11_G5_Ristorante.Prenotazione" %>

<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
	<title>Nuova prenotazione</title>
</asp:Content>



<asp:Content ContentPlaceHolderID="Body_PlaceHolder" runat="server">

		<form id="prenotazioni" runat="server">
			<div class="container col-12 no-gutters">
				<asp:Label ID="LBLWelcome" runat="server"></asp:Label>
				<asp:Button ID="BTNLogout" runat="server" OnClick="BTNLogout_Click" Text="Logout" />
				
				<div id="formBox" class="col-md-6">
					<h2>Nuova prenotazione</h2>
					<div id="formItem" class="form-group">
						<asp:ScriptManager ID="ScriptManagerCalendar" runat="server"></asp:ScriptManager>
						<asp:UpdatePanel ID="UpdatePanelCalendar" runat="server">
							<ContentTemplate>
								<asp:Label ID="LabelDate" runat="server" Text="Data selezionata:"></asp:Label>
								<asp:TextBox ID="TextBoxDate" runat="server"
									Height="20"
									ReadOnly="true"
									Width="80px" ></asp:TextBox> 
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
						<asp:TextBox ID="TXTCoperti" runat="server" Text="quanti coperti?" class="form-control"></asp:TextBox>

					</div>
					

					
					<div id="formItemBtn" class="form-group">
						<asp:Button id="BTNSubmit" runat="server" Text="Prenota" OnClick="BTNSubmit_Click" CssClass="btn btn-link" /> 
						<asp:Label ID="LBLOutput" runat="server">esito prenotazione..</asp:Label>
					</div>

				</div>

				 <div id="formBox2" class="col-md-6 offset-md-6">
					<h2>Le tue prenotazioni</h2>
					<div id="formItem2" class="form-group">
						<div class="row">
							<asp:Table ID="TBLPrenotazioni" runat="server"></asp:Table>
						</div>
					</div>
					
				</div>
			</div>
		</form>
</asp:Content>

<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>