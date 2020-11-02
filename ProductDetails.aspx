<%@ Page Title="Các mặt hàng" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Baitayonline.BookDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mgg">
        <asp:FormView ID="bookDetail" runat="server" ItemType="Baitayonline.Models.Book"
            SelectMethod="GetDetails"
            RenderOuterTable="false">
            <ItemTemplate>
                <div>
                    <h1><%#:Item.BookName %></h1>
                </div>
                <br />
                <table>
                    <tr>
                        <td>
                            <img src="/Images/<%#:Item.ImagePath %>"
                                style="border: none; height: 225px" alt="<%#:Item.BookName
%>" />
                        </td>
                        <td>&nbsp;</td>
                        <td style="vertical-align: top; text-align: left;">
                            <b>Description:</b><br />
                            <%#:Item.Description %>
                            <br />
                            <span><b>Price:</b>&nbsp;<%#:
String.Format("{0:c}",Item.UnitPrice) %></span>
                            <br />
                            <span><b>Book Number:</b>&nbsp;<%#:Item.BookID %></span>
                            <br />
                        </td>
                    </tr>
                </table>

                <br />
                <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>" class="btn btn-red"><i class="fas fa-plus"></i>Thêm vào giỏ hàng</a>

            </ItemTemplate>


        </asp:FormView>
    </div>
</asp:Content>
