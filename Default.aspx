<%@ Page Title="Chào mừng bạn đã đến với trang web bán bài online" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Baitayonline._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./Images/c1.jpg" alt="carousel" width="100%" height="400">
                    </div>
                    <div class="carousel-item">
                        <img src="./Images/c2.jpg" alt="carousel" width="100%" height="400">
                    </div>
                    <div class="carousel-item">
                        <img src="./Images/c3.jpg" alt="carousel" width="100%" height="400">
                    </div>
                    <div class="carousel-item">
                        <img src="./Images/c4.jpg" alt="carousel" width="100%" height="400">
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
            <div class="mg">
                <br />
                <input type="text" id="myInput" class="form-control" style="width: 300px" onkeyup="myFunction()" placeholder="Tìm kiếm sản phẩm" title="Nhập vào ô tìm kiếm">

                <h2>Sản phẩm mới</h2>
                <div class="row" id="cardd" style="width: 100%">
                    <asp:ListView ID="bookList" runat="server" DataKeyNames="BookID"
                        GroupItemCount="4"
                        ItemType="Baitayonline.Models.Book" SelectMethod="GetBooks">
                        <EmptyDataTemplate>
                            <p>No data was returned.</p>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <div class="card" runat="server" style="width: 18rem;">
                                <a href="ProductDetails.aspx?productID=<%#:Item.BookID%>">
                                    <img data-src="/Images/<%#:Item.ImagePath%>" alt="Card image" width="316" height="272" class="lazy card-img-top" loading="lazy" />
                                </a>
                                <div class="card-body">
                                    <h5 class="card-title"><a href="ProductDetails.aspx?productID=<%#:Item.BookID%>">
                                        <span>
                                            <%#:Item.BookName%>
                                        </span>
                                    </a>
                                    </h5>
                                    <p class="card-text"><span><b>Giá |</b><%#:String.Format("{0:n}",Item.UnitPrice)%> đ</span></p>
                                    <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>" class="btn btn-red"><i class="fas fa-plus"></i>Thêm vào giỏ hàng</a>
                                </div>
                            </div>

                        </ItemTemplate>
                        <LayoutTemplate>
                            <table style="width: 100%;">
                                <tbody>


                                    <table id="groupPlaceholderContainer" runat="server"
                                        style="width: 100%">
                                        <tr id="groupPlaceholder">
                                        </tr>
                                    </table>


                                </tbody>
                            </table>
                        </LayoutTemplate>
                    </asp:ListView>

                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
