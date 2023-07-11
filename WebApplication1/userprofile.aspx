<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="WebApplication1.userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <img />
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col text-center">
                                <h4>Your Profile</h4>
                                <span>Account Status -</span>
                                <asp:Label class="badge badge-pill badge-success" runat="server" Text="Active"></asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Enter First Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Email" ID="TextBox5" placeholder="Enter Email ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Date" ID="TextBox6" placeholder="Enter Date of Birth" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Email" ID="TextBox7" placeholder="Enter Address" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Number" ID="TextBox10" placeholder="Enter Pincode" runat="server"></asp:TextBox>
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
                                    <asp:TextBox class="form-control" ID="TextBox1" placeholder="Enter User ID" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Old Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox2" TextMode="Password" placeholder="Enter Password" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>New Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox9" TextMode="Password" placeholder="Enter Confirm Password" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-primary btn-md btn-block " ID="Button1" runat="server" Text="Update" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="home.aspx">back to home</a><br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <img />
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col text-center">
                                <h4>Your Issued Books</h4>
                                <asp:Label class="badge badge-pill badge-info" runat="server" Text="Your Books Info"></asp:Label>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
