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
 <hgroup>
     <h1><%: Title %>.</h1>
 <h2>Các sản phẩm bán chạy:</h2>
 </hgroup>
 <asp:ListView ID="bookList"  runat="server" DataKeyNames="BookID"
GroupItemCount="4"
 ItemType="Baitayonline.Models.Book" SelectMethod="GetBooks">
 <EmptyDataTemplate>


 <p>No data was returned.</p>
 
 
 </EmptyDataTemplate>
 <EmptyItemTemplate>
 <td/>
 </EmptyItemTemplate>
 <GroupTemplate>
 <tr id="itemPlaceholderContainer" runat="server">
 <td id="itemPlaceholder" runat="server"></td>
 </tr>
 </GroupTemplate>

 



     <ItemTemplate>
     <div class="card" runat="server" style="width: 18rem;">

         <img src ="/Images/<%#:Item.ImagePath%>" width="316" height="272" class="card-img-top" alt="Card image cap"
style="border:solid" />
  <div class="card-body">
    <h5 class="card-title"> <a href="ProductDetails.aspx?productID=<%#:Item.BookID%>">
 <span>
 <%#:Item.BookName%>
 </span>
 </a></h5>
    <p class="card-text"> <span> <b>Giá |</b><%#:String.Format("{0:n}",Item.UnitPrice)%> đ</span></p>
    <a href="AddToCart.aspx?bookID=<%#:Item.BookID%>" class="btn btn-danger">Đặt hàng ngay</a>
  </div>
</div>
</p>
 </td>



 </ItemTemplate>

 <LayoutTemplate>
 <table style="width:100%;>
 <tbody>
 <tr>
 <td>
 <table id="groupPlaceholderContainer" runat="server"
style="width:100%">
 <tr id="groupPlaceholder"></tr>
 </table>
 </td>
 </tr>
<tr>
 <td></td>
 </tr>
<tr></tr>
 </tbody>
 </table>
 </LayoutTemplate>
 </asp:ListView>
 </div>
     </div>
 </section>
</asp:Content>