<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermangement.aspx.cs" Inherits="WebApplication1.adminmembermangement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row my-2">
                            <div class="col text-center">
                                <h4>Member Details</h4>
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

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Member ID</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="ID" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" class="btn btn-dark " runat="server" Text="Go" OnClick="Button1_Click1" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>First Name</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox3" ReadOnly="true" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" placeholder="Status" ReadOnly="true" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="LinkButton1" class="btn btn-success mr-1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-check-circle"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" class="btn btn-warning mr-1" runat="server" OnClick="LinkButton2_Click"><i class="fa fa-pause-circle-o"></i></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton3" class="btn btn-danger" runat="server" OnClick="LinkButton3_Click"><i class="fa fa-times-circle"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Contact No</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pincode</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                             </div>
                          </div>
                            <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Address</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" ReadOnly="true" runat="server"></asp:TextBox> 
                                </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-8 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn btn-danger btn-block btn-md " runat="server" Text="Delete User Permanently" OnClick="Button3_Click" />
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
                                <h4>Members list</h4>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col text-center">
                                <hr />
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_table]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="firstname" HeaderText="Name" SortExpression="firstname" />
                                        <asp:BoundField DataField="contact_number" HeaderText="Mobile No" SortExpression="contact_number" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
