<%@ Page Title="Giỏ hàng của bạn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ShoppingCart.aspx.cs" Inherits="Baitayonline.ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mgg">
        <div id="ShoppingCartTitle" runat="server" class="ContentHead">
            <h1>Giỏ hàng của bạn</h1>

        </div>
        <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False"
            ShowFooter="True" GridLines="Vertical" CellPadding="4"
            ItemType="Baitayonline.Models.CartItem"
            SelectMethod="GetShoppingCartItems"
            CssClass="table table-striped table-bordered">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="Mã sản phẩm"
                    SortExpression="BookID" />
                <asp:BoundField DataField="Book.BookName" HeaderText="Tên" />
                <asp:BoundField DataField="Book.UnitPrice" HeaderText="Giá tiền"
                    DataFormatString="{0:n}" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tổng cộng">
                    <ItemTemplate>
                        <%#:String.Format("{0:n}",
 ((Convert.ToDouble(Item.Quantity)) *
Convert.ToDouble(Item.Book.UnitPrice)))%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chọn">
                    <ItemTemplate>
                        <asp:CheckBox ID="Remove" runat="server"></asp:CheckBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div>
            <p></p>
            <strong>
                <asp:Label ID="LabelTotalText" runat="server" Text="Tổng giỏ hàng:"></asp:Label>
                <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
            </strong>
        </div>
        <br />
        <table>
            <tr>
                <td>
                    <div class="cart" id="cart">
                        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfMBZS8uUU9C5-5jE36cwGFp5jjkj4f4OdrKjbFT1pccTOxWg/viewform?embedded=true" width="470px" height="410" frameborder="1">Đang tải…</iframe>
                    </div>

                    <asp:Button ID="UpdateBtn" CssClass="btn btn-success" runat="server" Text="Cập nhật/Xóa"
                        OnClick="UpdateBtn_Click" />
                    <input type="button" class="btn btn-red btn-pay" value="Thanh toán" />

                </td>
            </tr>
        </table>

    </div>
</asp:Content>
