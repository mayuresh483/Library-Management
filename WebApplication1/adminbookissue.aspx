<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissue.aspx.cs" Inherits="WebApplication1.adminbookissue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row my-2">
                            <div class="col text-center">
                                <h4>Book Issuing</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <img />
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
                                    <label>Member ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Enter Member ID" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book ID</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Enter Book ID" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" class="btn btn-dark " runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Enter Member Name" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Enter Book Name" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">    
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" TextMode="Date" placeholder="Start Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>End Date</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" TextMode="Date" placeholder="End Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button ID="Button2" class="btn btn-primary btn-block btn-md" runat="server" Text="Issue" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn btn-success btn-block btn-md " runat="server" Text="Return" />
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
                        
                        <div class="row my-2">
                            <div class="col text-center">
                                <h4>Issued Book list</h4>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col text-center">
                                <hr />
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
