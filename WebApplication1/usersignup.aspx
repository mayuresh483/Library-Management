<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
       <div class="row">
           <div class="col-md-10 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                                <img />
                           </div>
                       </div>
                       <div class="row my-2">
                           <div class="col">
                               <h4 class="text-center">Member Signup</h4>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                                <hr />
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-6">
                               <div class="form-group">
                                    <label>First Name</label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Enter First Name" runat="server"></asp:TextBox>  
                               </div>
                           </div>
                           <div class="col-md-6">
                               <div class="form-group">
                                    <label>Last Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Enter Last Name" runat="server"></asp:TextBox>                                
                                </div>
                           </div>
                       </div>

                       <div class="row">
                           <div class="col-md-6">
                               <div class="form-group">
                                <label>Email ID</label>
                                <asp:TextBox CssClass="form-control" TextMode="Email" ID="TextBox3" placeholder="Enter Email ID" runat="server"></asp:TextBox>    
                               </div>            
                           </div>
                           <div class="col-md-6">
                               <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Date" ID="TextBox4" placeholder="Enter Date of Birth" runat="server"></asp:TextBox>                                
                                </div>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <div class="form-group">
                                <label>Address</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Enter Address" runat="server"></asp:TextBox>    
                               </div>            
                           </div>
                       </div>
                       <div class="row">
                           <div class="col-md-4">
                               <div class="form-group">
                                <label>State</label>
                                   <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                       <asp:ListItem>Select</asp:ListItem>
                                       <asp:ListItem>Goa</asp:ListItem>
                                       <asp:ListItem>Maharashtra</asp:ListItem>
                                   </asp:DropDownList>

                               </div>            
                           </div>
                           <div class="col-md-4">
                               <div class="form-group">
                                    <label>City</label>
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Enter City" runat="server"></asp:TextBox>
                                </div>
                           </div>
                           <div class="col-md-4">
                               <div class="form-group">
                                    <label>Pincode</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Number" ID="TextBox7" placeholder="Enter Pincode" runat="server"></asp:TextBox>                                
                                </div>
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <div class="form-group">
                                <label>Contact Number</label>
                                <asp:TextBox CssClass="form-control" TextMode="Phone" ID="TextBox8" placeholder="Enter Contact Number" runat="server"></asp:TextBox>    
                               </div>            
                           </div>
                       </div>
                       <div class="row">
                           <div class="col">
                               <div class="form-group">
                                   <label>User ID</label>
                                   <asp:TextBox class="form-control" ID="TextBox9" placeholder="Enter User ID" runat="server"></asp:TextBox>
                               </div>
                                <div class="form-group">
                                   <label>Password</label>
                                   <asp:TextBox class="form-control" ID="TextBox10" TextMode="Password" placeholder="Enter Password" runat="server"></asp:TextBox>
                               </div>
                                <div class="form-group">
                                   <label>Confirm Password</label>
                                   <asp:TextBox class="form-control" ID="TextBox11" TextMode="Password" placeholder="Enter Confirm Password" runat="server"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                   <asp:Button CssClass="btn btn-success btn-md btn-block " ID="Button1" runat="server" Text="Signup" OnClick="Button1_Click" />
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
