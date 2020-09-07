<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="BooksShopOnline.Admin.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Books Management</h1>
 <hr />
 <h3>Add Book:</h3>
 <table>
 <tr>
 <td><asp:Label ID="LabelAddCategory"
runat="server">Category:</asp:Label></td>
 <td>
 <asp:DropDownList ID="DropDownAddCategory" runat="server"
 ItemType="BooksShopOnline.Models.Category"
SelectMethod="GetCategories" DataTextField="CategoryName"
 DataValueField="CategoryID" >
 </asp:DropDownList>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="LabelAddName" runat="server">Name:</asp:Label></td>
 <td>
 <asp:TextBox ID="AddBookName" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
Text="* Book name required." ControlToValidate="AddBookName" SetFocusOnError="true"
Display="Dynamic"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="LabelAddDescription"
runat="server">Description:</asp:Label></td>
 <td>
 <asp:TextBox ID="AddBookDescription" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
Text="* Description required." ControlToValidate="AddBookDescription"
SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="LabelAddPrice" runat="server">Price:</asp:Label></td>
 <td>
 <asp:TextBox ID="AddBookPrice" runat="server"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
Text="* Price required." ControlToValidate="AddBookPrice" SetFocusOnError="true"
Display="Dynamic"></asp:RequiredFieldValidator>
 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="* Must be a valid price without $." ControlToValidate="AddBookPrice" SetFocusOnError="True" Display="Dynamic" ValidationExpression="^[0-9]*(\.)?[0-9]?[0-9]?$"></asp:RegularExpressionValidator>
 </td>
 </tr>
 <tr>
 <td><asp:Label ID="LabelAddImageFile" runat="server">Image
File:</asp:Label></td>
 <td>
 <asp:FileUpload ID="BookImage" runat="server" />
 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
Text="* Image path required." ControlToValidate="BookImage" SetFocusOnError="true"
Display="Dynamic"></asp:RequiredFieldValidator>
 </td>
 </tr>
 </table>
 <p></p>
 <p></p>
 <asp:Button ID="AddBookButton" runat="server" Text="Add Book"
OnClick="AddBookButton_Click" CausesValidation="true"/>
 <asp:Label ID="LabelAddStatus" runat="server" Text=""></asp:Label>
 <p></p>
 <h3>Remove Book:</h3>
 <table>
 <tr>
 <td><asp:Label ID="LabelRemoveBook" runat="server">Book:</asp:Label></td>
 <td><asp:DropDownList ID="DropDownRemoveBook" runat="server"
ItemType="BooksShopOnline.Models.Book"
 SelectMethod="GetBooks" AppendDataBoundItems="true"
 DataTextField="BookName" DataValueField="BookID" >
 </asp:DropDownList>
 </td>
 </tr>
 </table>
 <p></p>
 <asp:Button ID="RemoveBookButton" runat="server" Text="Remove Book"
OnClick="RemoveBookButton_Click" CausesValidation="false"/>
 <asp:Label ID="LabelRemoveStatus" runat="server" Text=""></asp:Label>

</asp:Content>
