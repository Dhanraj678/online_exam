<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="test_student.aspx.cs" Inherits="test_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


                    <!--coding for student id,name,class,subject-->

    <asp:ScriptManager ID="ScriptManager1" runat="server">

    </asp:ScriptManager>
    

                                <div style="margin-top:10%;margin-left:20%"class="select-wrap">
              
                                <table>
                                    <tr>

                                        <td>
                                            <asp:label runat="server" text="STUDENT-ID - "  style="text-transform: uppercase; color: #000000; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
                                                <asp:label runat="server" text="" id="lbl_stu_id"  style="text-transform: uppercase; color: #009900; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
        <br />
                                             <asp:label runat="server" text="STUDENT-NAME - "  style="text-transform: uppercase; color: #000000; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
                                                <asp:label runat="server" text="" id="lbl_stu_name"    style="text-transform: uppercase; color: #009900; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
        <br />
                                            <asp:label runat="server" text="STUDENT-CLASS - "  style="text-transform: uppercase; color: #000000; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
                                                <asp:label runat="server" text="" id="lbl_stu_class"    style="text-transform: uppercase; color: #009900; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
        <br />
                                            <asp:label runat="server" text="STUDENT-SUBJECT - " style="text-transform: uppercase; color: #000000; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>
                                                <asp:label runat="server" text="" id="lbl_stu_sub"   style="text-transform: uppercase; color: #009900; font-size: 20pt; font-weight: 700; font-family: Arial"></asp:label>

                                        </td>
                                        <td style="margin-top: -13%; margin-left: 70%;background-color:white;padding-left:300px"">
                                            <asp:UpdatePanel ID="jk" runat="server">
                                                <ContentTemplate>

                                            <asp:label runat="server" text="min" style="text-transform: uppercase; color: #000000; font-size: 35pt; font-weight: 700; font-family: Arial" ></asp:label>
                                                    <asp:label runat="server" text="10" id="lbl_mint" style="text-transform: uppercase; color: #009900; font-size: 35pt; font-weight: 700; font-family: Arial"></asp:label>

                                            
                                                    <asp:label runat="server" text=":" style="text-transform: uppercase; color: #000000; font-size: 35pt; font-weight: 700; font-family: Arial" ></asp:label>  
                                                      <asp:label runat="server"  id="lbl_colon" style="text-transform: uppercase; color: #009900; font-size: 35pt; font-weight: 700; font-family: Arial"></asp:label>
                                            <asp:label runat="server" text="sec" style="text-transform: uppercase; color: #000000; font-size: 35pt; font-weight: 700; font-family: Arial" ></asp:label>  
                                                      <asp:label runat="server" text="59" id="lbl_sec" style="text-transform: uppercase; color: #009900; font-size: 35pt; font-weight: 700; font-family: Arial"></asp:label>

                                            <asp:Timer ID="Timer1" runat="server" Interval="100" OnTick="Timer1_Tick" Enabled="true"></asp:Timer>                     
                                         </ContentTemplate>
                                            </asp:UpdatePanel>
                                                    </td>
                                    </tr>


                                </table>
    <!--coding of student class,name.,subject,id ends here-->
                                    


                                        
                                        <!--coding for the clock making-->
                                    <br />
                                    <br />
                                   <center>
                                                   <h1 style="
    padding-right: 200px; font-family:Verdana, Geneva, Tahoma, sans-serif;font-size:55px;color:black">TEST YOUR ABILITY</h1>
                                       </center>
                                        <br />
                                    <br />
                                    <br />
                                    <br />

                                        
                                    <center>
                                        <div   >
                                            <center>
                                            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="false"  style="margin-left:60px;margin-bottom:200px;width:1600px;height:5%;font-family:Verdana, Geneva, Tahoma, sans-serif;font-size:medium;border:0px  ;border-radius:0px" ForeColor="Red" GridLines="None" ShowHeader="False">

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


                                                                            <asp:DropDownList ID="drp_ans1" runat="server" style="color:darkgreen">
                                                                                
                                                                                <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>1</asp:ListItem>
                                                  <asp:ListItem>2</asp:ListItem>
                                                  <asp:ListItem>3</asp:ListItem>
                                                   <asp:ListItem>4</asp:ListItem> 

                                                                                
                                                                            </asp:DropDownList>

                                                                                                                                                         <asp:Label ID="lbl_ans" runat="server" Text='<%#Eval("ans") %>' visible="false"></asp:Label>


                                                                        </td>



                                                                    </tr>

                                                                   


                                                                </th>
                                                           </table>



                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                </Columns>


                                                
                                                 

          
           
  
                                            </asp:GridView>


                                          <!-- end of working on grid view-->

                                                


                                                            </center>

                                            <asp:Button ID="btn_new" runat="server" Text="SUBMIT" class="btn btn-success" 
                     style="width:600px;" OnClick="btn_new_Click"  />
                                        </div>
                                        </center>
                                    <asp:label id="lbl_test_id" runat="server" text="Label">

                                    </asp:label>
                                    
    <!--making submit button-->

  
           
    <!--time coding ends here-->
                                </div>
   
   


</asp:Content>

