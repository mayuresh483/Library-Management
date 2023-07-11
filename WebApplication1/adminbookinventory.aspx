<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="WebApplication1.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function Readurl(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);

            }
        }
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
                                <h4>Book Details</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="books/books1.png" id="imgview" height="150px" width="100px" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <asp:FileUpload class="form-control" onchange="Readurl(this);" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Book ID</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Enter Book ID" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button2" class="btn btn-dark " runat="server" Text="Go" OnClick="Button2_Click" />
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-9">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" placeholder="Enter Book Name" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Language</label>
                                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="Kannada" Value="Kannada"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Publisher Name</label>
                                    <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Author Name</label>
                                    <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                        <asp:ListItem Text="a1" Value="a1"></asp:ListItem>
                                        <asp:ListItem Text="a2" Value="a2"></asp:ListItem>
                                    </asp:DropDownList>
                                    <label>Publisher Date</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" TextMode="Date"></asp:TextBox>                                    
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Genre</label>
                                    <asp:ListBox ID="ListBox1" runat="server" CssClass="form-control" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                        <asp:ListItem Text="Programming" Value="Programming"></asp:ListItem>
                                        <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
                                    </asp:ListBox>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Edition</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Book Cost(per unit)</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Pages</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Actual Stock</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Current Stock</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Issued Books</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Book Description</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox> 
                                </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button ID="Button3" class="btn btn-success btn-block btn-md " runat="server" Text="Add" OnClick="Button3_Click" />
                                </div>
                            </div>
                              <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-warning btn-block btn-md " runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                            </div>
                              <div class="col-md-4 ">
                                <div class="form-group">
                                    <asp:Button ID="Button4" class="btn btn-danger btn-block btn-md " runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                <h4>Book Inventory list</h4>
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col text-center">
                                <hr />
                            </div>
                        </div>
                        <div class="row my-2">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_table]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                        <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                        <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                        <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
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
