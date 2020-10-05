<%@ Page Title="Đăng nhập" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Baitayonline.Account.Login" Async="true" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <div class="container-fluid">
      <div class="mgg">
         <div class="row" style="width:100%; justify-content:center;">
            <div>
               <section id="loginForm">
                  <div class="form-horizontal">
                     <h4>Đăng nhập tài khoản để tiếp tục</h4>
                     <hr />
                     <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                           <asp:Literal runat="server" ID="FailureText" />
                        </p>
                     </asp:PlaceHolder>
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email:</asp:Label>
                        <div>
                           <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                           <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                              CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                     </div>
                     <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Mật khẩu:</asp:Label>
                        <div class="">
                           <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                           <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                     </div>
                     <div class="form-center" style="text-align:center">
                        <div class="form-group">
                           <div class="checkbox">
                              <asp:CheckBox runat="server" ID="RememberMe" />
                              <asp:Label runat="server" AssociatedControlID="RememberMe">Ghi nhớ</asp:Label>
                           </div>
                        </div>
                        <div class="form-group">
                           <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-success" />
                        </div>
                        <h4>Chưa có tài khoản? Tạo tài khoản ngay</h4>
                        <p>
                           <asp:HyperLink runat="server" ID="RegisterHyperLink" CssClass="btn btn-warning" ViewStateMode="Disabled">Tạo tài khoản mới</asp:HyperLink>
                        </p>
                     </div>
                  </div>
               </section>
            </div>
            <!--
               <div class="col-md-4">
                   <section id="socialLoginForm">
                       
                           <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
                   </section>
               </div>
                     -->
         </div>
      </div>
   </div>
</asp:Content>