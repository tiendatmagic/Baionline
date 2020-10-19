<%@ Page Title="Sản phẩm" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Baitayonline.BookList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div id="CategoryMenu" style="text-align: center">
        <asp:ListView ID="categoryList" ItemType="Baitayonline.Models.Category" runat="server"
            SelectMethod="GetCategories">
            <ItemTemplate>
                <b style="font-size: large; font-style: normal;">
                    <a href="/ProductList.aspx?id=<%#: Item.CategoryID %>">
                        <%#: Item.CategoryName %>
                    </a>
                </b>
            </ItemTemplate>
            <ItemSeparatorTemplate>| </ItemSeparatorTemplate>
        </asp:ListView>
    </div>

    <section>
        <div>


            <div class="mg">


                <h2>Danh sách sản phẩm</h2>
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
                            <div class="card" runat="server" style="width: 18rem; margin: 10px;">
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
                </div>
            </div>
        </div>
    </section>
</asp:Content>
