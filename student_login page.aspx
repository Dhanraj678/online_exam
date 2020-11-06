<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="student_login page.aspx.cs" Inherits="student_login_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




                                    

                            <div class="hero-wrap js-fullheight" style="background-image: url('images/bg_2.jpg'); overflow:hidden" data-stellar-background-ratio="0.5">
   <center>
    <div style="width:400px;border-style:groove;border-color:Gray; border-width:2px; background-color:#333333; margin-left:200px;padding-left:50px; margin-top:70px; padding-top:20px; text-align:left; opacity:70%">

<div class="row form-group" style=" width:300px">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_stu_id">CANDIDATE_ID</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_stu_id" runat="server" class="form-control" placeholder=""></asp:TextBox>


                    
                </div>
              </div>


              <div class="row form-group" style=" width:300px">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_PASSWORD">PASSWORD</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_PASSWORD" runat="server" class="form-control" placeholder="" TextMode="password" > </asp:TextBox>



                </div>
              </div>

              

             


                            <asp:Button ID="btn_login" runat="server" Text="Login" 
            class="btn btn-primary" OnClick="btn_login_Click"   />



            <asp:Button ID="Button1" runat="server" Text="Creatre Account" 
            class="btn btn-primary" OnClick="Button1_Click1"    />
        
        
                            </div>
</center>
</div>









</asp:Content>

