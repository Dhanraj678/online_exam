<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="Result_list.aspx.cs" Inherits="Result_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






                        

    
    <div style="padding:100px 40px;margin:auto;align-items:center;border:0px;width:1200px"class="my-5">
   <%--<table>
        <tr>
            <td class="auto-style3"><b><span class="auto-style1">Student Id</span>-<asp:Label ID="lbl_stu_id" runat="server" Text="" CssClass="auto-style6"></asp:Label></b></td>
            <td class="auto-style4"><b><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Name</span>-</b><asp:Label ID="lbl_stu_name" runat="server" Text="" CssClass="auto-style5"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style2"><b><span class="auto-style1">Class</span>-</b><asp:Label ID="lbl_class" runat="server" Text="" CssClass="auto-style5"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Subject</span>-</b><asp:Label ID="lbl_subject" runat="server" Text="" CssClass="auto-style5"></asp:Label></td>
        </tr>
    </table>--%>
        <h1>YOUR LAST RESULT</h1>
        <br /><br />
        <br />


        <div>

        <asp:GridView ID="GridView1" runat="server"  ForeColor="Black" ShowFooter="True" ShowHeaderWhenEmpty="True">


           






        </asp:GridView>


             </div>






</div>
</asp:Content>

