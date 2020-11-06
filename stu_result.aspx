<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="stu_result.aspx.cs" Inherits="stu_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-family: Arial;
            font-size: 15px;
            color: #000000;
            text-transform: uppercase;
        }
        .auto-style2 {
            width: 178px;
        }
        .auto-style3 {
            width: 178px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-family: Arial;
            font-weight: bolder;
            color: #FF0000;
            text-transform: uppercase;
        }
        .auto-style6 {
            font-family: Arial;
            color: #FF0000;
            text-transform: uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <div style="padding:100px 40px;margin:auto;align-items:center;border:0px;width:1200px"class="my-5">
    <table>
        <tr>
            <td class="auto-style3"><b><span class="auto-style1">Student Id</span>-<asp:Label ID="lbl_stu_id" runat="server" Text="" CssClass="auto-style6"></asp:Label></b></td>
            <td class="auto-style4"><b><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student Name</span>-</b><asp:Label ID="lbl_stu_name" runat="server" Text="" CssClass="auto-style5"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style2"><b><span class="auto-style1">Class</span>-</b><asp:Label ID="lbl_class" runat="server" Text="" CssClass="auto-style5"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Subject</span>-</b><asp:Label ID="lbl_subject" runat="server" Text="" CssClass="auto-style5"></asp:Label></td>
        </tr>
    </table>
        <br /><br />
        <br />
        



         <center>
                                                   <h1 style="
    padding-right: 200px; font-family:'Microsoft Himalaya';font-size:75px;color:red">YOUR RESULT</h1>
                                       </center>





         <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false"  style="margin-left:20px;margin-bottom:100px;width:100%;height:20%;font-family:Verdana, Geneva, Tahoma, sans-serif;font-size:medium;border:2px solid double;border-radius:10px"  ForeColor="#0066FF" GridLines="None" ShowHeader="False">

                                                <Columns>
                                                    <asp:TemplateField>
                                                        
                                                        <ItemTemplate>

                                                            <table>

                                                                
                                                                     <tr>

                                                                                <td colspan="2">
                                                                                    <asp:Label ID="lbl_q_id" runat="server" Text='<%#Eval("q_id") %>' visible="false"></asp:Label>
                                                                                    <b>Q</b>
                                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Container.DataItemIndex + 1 %>'></asp:Label>
                                                                                    
                                                                                    <asp:Label ID="lbl_q_1" runat="server" Text='<%# Eval("ques") %>'></asp:Label>
                                                                                </td>
                                                                               </tr>
                                                                   
                                                                     <tr>      
                                                                         
                                                                         
                                                                                                                                           

                                                                        <td>
                                                                              <asp:Label ID="Label2" runat="server" Text="1"></asp:Label>
                                                                             <asp:Label ID="lbl_o_1" runat="server" Text='<%#Eval ("op1") %>'></asp:Label>

                                                                         </td>



                                                                           <td>
                                                                              <asp:Label ID="Label3" runat="server" Text="2"></asp:Label>
                                                                             <asp:Label ID="lbl_o_2" runat="server" Text='<%#Eval("op2") %>'></asp:Label>

                                                                         </td>

                                                                           <td>
                                                                              <asp:Label ID="Label4" runat="server" Text="3"></asp:Label>
                                                                             <asp:Label ID="lbl_o_3" runat="server" Text='<%#Eval ("op3") %>'></asp:Label>

                                                                         </td>

                                                                         <tr>

                                                                           <td>
                                                                              <asp:Label ID="Label6" runat="server" Text="4"></asp:Label>
                                                                             <asp:Label ID="lbl_o_4" runat="server" Text='<%#Eval("op4") %>'></asp:Label>

                                                                         </td>
                                                                             </tr>

                                                                    </tr>

                                                                    <tr>

                                                                        <td>

                                                                            <b>Your ans: </b>
                                                                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("stu_ans") %>'></asp:Label>
                                                                          <!--deleted dropdown list-->
                                                                            <b>Correct ans:</b>

                                                                            <asp:Label ID="Label7" runat="server" Text='<%#Eval("correct_ans") %>'></asp:Label>                                                                             <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("ans") %>' visible="false"></asp:Label>


                                                                        </td>



                                                                    </tr>

                                                                   


                                                                </th>
                                                           </table>



                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>

                                            </asp:GridView>



                                          <!-- end of working on grid view-->


</div>


    






</asp:Content>

