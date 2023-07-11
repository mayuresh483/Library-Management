<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
       <div class="row">
           <div class="col-md-6 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                                <img />
                           </div>
                       </div>
                       <div class="row my-2">
                           <div class="col">
                               <h3 class="text-center">Admin Login</h3>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                                <hr />
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <div class="form-group">
                                   <label>Admin ID</label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Enter Member ID" runat="server"></asp:TextBox>
                               </div>
                                <div class="form-group">
                                   <label>Password</label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                   <asp:Button CssClass="btn btn-success btn-md btn-block " ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
               <a href="home.aspx">back to home</a><br>
           </div>
       </div>
   </div> 
</asp:Content>
