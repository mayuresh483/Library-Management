<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="WebApplication1.viewbooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-12">
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
                        <asp:gridview id="GridView1" class="table table-bordered table-striped" runat="server"></asp:gridview>
                    </div>
                </div>
            </div>
        </div>
       <a href="home.aspx">back to home</a><br>
    </div>

</asp:Content>
