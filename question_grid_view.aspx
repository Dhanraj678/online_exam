<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="question_grid_view.aspx.cs" Inherits="question_grid_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    
    <br /><br /><br /><br />
    <div >
        <center>

        <asp:GridView class="table-dark" ID="GridView1" runat="server" Width="60%" Height="60%" BorderStyle="None" BorderColor="White" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
           <Columns>
               <asp:ButtonField Text="EDIT" ControlStyle-ForeColor="Yellow" />
           </Columns>
        </asp:GridView>
            </center>
    </div>




    
      






</asp:Content>

