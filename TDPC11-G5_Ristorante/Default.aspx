<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="Default.aspx.cs" Inherits="TDPC11_G5_Ristorante.Default" %>

<asp:Content ContentPlaceHolderID="Head_PlaceHolder" runat="server">
        <title>Homepage Ristorante</title>  
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
        <div class="row ">
            <div class="col-10 "></div>
            <div class="col-2 ">
                <asp:Label ID="LBLOutput" runat="server"></asp:Label>
                <div class="dropleft">
                    <button class="btn btn-secondary dropleft-toggle " type="button" id="prenotaUnTavolo" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <h3>Prenota un tavolo</h3>
                    </button>
                    <div class="dropdown-menu p-2 " aria-labelledby="prenotaUnTavolo">
                        <form id="validateLogin" runat="server">
                            <div id="formBox" class="">
                                <div id="formItem" class="form-group">
                                    <asp:TextBox ID="TXTUser" placeholder="Username" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div id="formItem1" class="form-group">
                                    <asp:TextBox ID="TXTPsw" placeholder="password" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div id="formItemBtn" class="form-group">
                                    <asp:Button ID="BTNSubmit" runat="server" Text="Login" OnClick="BTNSubmit_CLick" CssClass="nav-link" />
                                    <asp:Button ID="BTNReg" runat="server" Text="Registrati" OnClick="BTNReg_CLick" CssClass="btn btn-link text-decoration-none" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="row ">
            <div class="col-2 "></div>
            <div class="col-8 ">
                <div id="carouselImage" class="carousel slide " data-ride="carousel">
                    <ol class="carousel-indicators ">
                        <li data-target="#carouselImage" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselImage" data-slide-to="1"></li>
                        <li data-target="#carouselImage" data-slide-to="2"></li>
                        <li data-target="#carouselImage" data-slide-to="3"></li>
                        <li data-target="#carouselImage" data-slide-to="4"></li>
                        <li data-target="#carouselImage" data-slide-to="5"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="image/grotta1.jpg" class="d-block w-100 " alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="image/grotta2.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="image/grotta3.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item ">
                            <img src="image/grotta4.jpg" class="d-block w-100 " alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="image/grotta5.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="image/grotta6.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselImage" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselImage" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-2 "></div>
        </div>

        <div class="row pt-lg-5 ">
            <div class="col-12 ">
                <h1 class="ml-5 ">Menu del giorno</h1>
                <div class="accordion" id="Menu">
                    <div class="card-body">
                        <div class="card-header" id="headingOne">
                            <button class="btn btn-link btn-block text-left collapsed  text-muted text-decoration-none border-warning" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                <div class="  d-flex w-100 justify-content-around ">
                                    <h2>Bucatini all'Amatriciana</h2>
                                </div>
                                <h3>Sugo con salsa di pomodoro, aglio, olio extravergine di oliva, pancetta e pecorino</h3>
                                <h3 class=" float-right">8,00 Euro</h3>
                                <h3>(Specialità romana)</h3>
                            </button>
                        </div>
                        <div id="collapseOne" class="collapse " aria-labelledby="headingOne" data-parent="#Menu">
                            <div class="card-body">
                                <p>
                                    Si dice che questo famoso piatto nato ad Amatrice fosse il pasto principale dei pastori, 
                            ma originariamente era senza pomodoro e prendeva il nome di “gricia”; 
                            questo ingrediente fu aggiunto in seguito quando i pomodori vennero importati dalle Americhe
                            e il condimento prese il nome di Amatriciana. E’ quindi normale che una ricetta così antica 
                            e popolare si sia trasformata nel tempo assumendo le numerose varianti di cui ancora si discute 
                            al giorno d’oggi. Quella che vi proponiamo qui è la nostra versione, preparata con ingredienti locali 
                            e di qualità. Perché pensiamo che in realtà la ricetta degli spaghetti all’Amatriciana non divida l’Italia,
                            bensì la unisca nel nome della bontà di una pietanza dall’animo semplice e dal carattere deciso… proprio come chi l’ha creata!                       
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-header" id="headingTwo">
                            <button class="btn btn-link btn-block text-left collapsed  text-muted text-decoration-none border-warning" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <div class="d-flex w-100 justify-content-around">
                                    <h2>Cordon Bleu</h2>
                                </div>
                                <h3>Carne di manzo, prosciutto, formaggio</h3>
                                <h3 class=" float-right">9,50 Euro</h3>
                                <h3>(Specialità milanese)</h3>
                            </button>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#Menu">
                            <div class="card-body">
                                <p>
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="card-header" id="headingThree">
                            <button class="btn btn-link btn-block text-left collapsed text-muted text-decoration-none border-warning" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <div class="d-flex w-100 justify-content-around">
                                    <h2>Verdure grigliate</h2>
                                </div>
                                <h3>Sugo con salsa di pomodoro, aglio, olio extravergine di oliva, pancetta e pecorino</h3>
                                <h3 class=" float-right">5,50 Euro</h3>
                                <h3>(Specialità romana)</h3>
                            </button>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#Menu">
                            <div class="card-body">
                                <p>
                                    Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3 
                                     Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3 
                                     Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3  Ricetta 3 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content> 

<asp:Content ContentPlaceHolderID="LinksJavaScript_PlaceHolder" runat="server"></asp:Content>
