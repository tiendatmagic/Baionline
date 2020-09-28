<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
CodeBehind="ShoppingCart.aspx.cs" Inherits="Baitayonline.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mgg">
 <div id="ShoppingCartTitle" runat="server" class="ContentHead"><h1>Shopping
Cart</h1></div>
 <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="False"
 ShowFooter="True" GridLines="Vertical" CellPadding="4"
 ItemType="Baitayonline.Models.CartItem"
 SelectMethod ="GetShoppingCartItems"
 CssClass="table table-striped table-bordered" >
 <Columns><asp:BoundField DataField="BookID" HeaderText="ID"
 SortExpression="BookID" />
 <asp:BoundField DataField="Book.BookName" HeaderText="Name" />
 <asp:BoundField DataField="Book.UnitPrice" HeaderText="Price (each)"
 DataFormatString="{0:n}"/>
 <asp:TemplateField HeaderText="Quantity">
 <ItemTemplate> 
 <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#: Item.Quantity %>"></asp:TextBox>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Item Total">
 <ItemTemplate>
<%#:String.Format("{0:n}",
 ((Convert.ToDouble(Item.Quantity)) *
Convert.ToDouble(Item.Book.UnitPrice)))%>
 </ItemTemplate>
 </asp:TemplateField>
 <asp:TemplateField HeaderText="Remove Item">
 <ItemTemplate>
 <asp:CheckBox id="Remove" runat="server"></asp:CheckBox>
 </ItemTemplate>
 </asp:TemplateField>
 </Columns>
</asp:GridView>
<div>
 <p></p>
 <strong>
 <asp:Label ID="LabelTotalText" runat="server" Text="Order Total:"></asp:Label>
 <asp:Label ID="lblTotal" runat="server" EnableViewState="false"></asp:Label>
 </strong>
</div>
<br />
    <table>
<tr>
<td>
    <div class="cart" id="cart">
    <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfMBZS8uUU9C5-5jE36cwGFp5jjkj4f4OdrKjbFT1pccTOxWg/viewform?embedded=true" width="640" height="410" frameborder="0" marginheight="0" marginwidth="0">Đang tải…</iframe>
    </div>

  <asp:Button ID="UpdateBtn" CssClass="btn btn-success" runat="server" Text="Cập nhật"
OnClick="UpdateBtn_Click"/>   
    <input type="button" class="btn btn-success btn-pay" value="Thanh toán"/>.
        
</td>
</tr>
</table>

    </div>
</asp:Content>