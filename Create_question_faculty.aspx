<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="Create_question_faculty.aspx.cs" Inherits="Create_question_faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


    <style type="text/css">
        .auto-style1 {
            text-transform: uppercase;
            color:black;
            font-size: 45pt;
            font-weight: 700;
            font-family: "Cooper Std Black";
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




                       <div class="ftco-section bg-light">
         <b><center><h1><span class="auto-style1">CREATE THE QUESTION</span></h1></center></b>
      <div class="container">
        <div class="row">
       
          <div class="col-md-12 col-lg-8 mb-5">
          
			     <form action="#" class="p-5 bg-white">
              
              <div class="row form-group">
                <div class="col-md-12 mb-3 mb-md-0">
                  <label for="option-price-1">
                    
                  </label>
                </div>
                <div class="col-md-12 mb-3 mb-md-0">
                  <label for="option-price-2">
                    
                  </label>
                </div>
              </div>
              
              <div class="row form-group">
                <div class="col-md-4 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_id" >QUESTION-ID</label>
                  
                    <asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="pls don't write anything"></asp:TextBox>
                </div>
              </div>


                      <br />


                     



                   










                 <!--    <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_name" >NAME</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                      <!--  <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


              <!--  </div>
              </div>-->
              
              
            

            
             
             <div class="form-field">

                                                    <div class="select-wrap">
                                                <label class="font-weight-bold"  for="drp_class">CLASS</label>
                                                        <div class="col-md-5 mb-3 mb-md-0">
                                                            <asp:DropDownList ID="drp_class" runat="server" class="form-control">
                                                                <asp:ListItem>----Select---</asp:ListItem>
                                                                <asp:ListItem>MCA</asp:ListItem>
                                                                <asp:ListItem>BCA</asp:ListItem>
                                                                <asp:ListItem>IT</asp:ListItem>
                                                                <asp:ListItem>COMPUTER-SCIENCE</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
						                    </div>


                 <br />







				              					<div class="select-wrap">
                                                      <div class="col-md-5 mb-3 mb-md-0">
                                                <label class="font-weight-bold" for="drp_subject">SUBJECT</label>
						                      <asp:DropDownList ID="Drp_subject" runat="server" class="form-control">
                                                  <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>JAVA</asp:ListItem>
                                                  <asp:ListItem>C++</asp:ListItem>
                                                  <asp:ListItem>C</asp:ListItem>
                                                   <asp:ListItem>RDBMS</asp:ListItem> 

                                             </asp:DropDownList>
						                     </div>
						                    </div>
								              </div>
							              
    <br />




                       <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_question" >QUESTIONS</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_question" runat="server" class="form-control" placeholder="Ex: Tata docomo" TextMode="MultiLine" Height="89px" Width="691px"></asp:TextBox>


                </div>
              </div>

                     <br />

                      <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_op1" >OPTION-1</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_op1" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>
              
                     <br />

                      <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_op2" >OPTION-2</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_op2" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>
              
                     <br />

                       <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_op3" >OPTION-3</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_op3" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>


                     <br />

                     <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_op4" >OPTION-4</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_op4" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>

                       <br />

                     <div class="select-wrap">
                                                      <div class="col-md-5 mb-3 mb-md-0">
                                                <label class="font-weight-bold" for="drp_ans">ANSWER</label>
						                      <asp:DropDownList ID="drp_ans" runat="server" class="form-control">
                                                  <asp:ListItem>----Select---</asp:ListItem>
                                                  <asp:ListItem>1</asp:ListItem>
                                                  <asp:ListItem>2</asp:ListItem>
                                                  <asp:ListItem>3</asp:ListItem>
                                                   <asp:ListItem>4</asp:ListItem> 

                                             </asp:DropDownList>
						                     </div>
						                    </div>
								             

            <!--for button-->
    <center>
            <br />

              <asp:Button ID="btn_new" runat="server" Text="New" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_new_Click1" />
           
    
    <asp:Button ID="btn_save" runat="server" Text="SAVE" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_save_Click"  />
    

         
        <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-primary" 
                     style="width:100px;"  />


            </center>
            <!--------------------------------------------------------->
                     
                   
              
                     </div>
            </div>
          </div>
         </div>
    



    
       <!--footer --->
                        
                                            


                                    <div class="card text-center">
  <div class="card-header">
    <ul class="nav nav-tabs card-header-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="#">Active</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="https://www.learncbse.in/" target="_blank">Learn-More</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true" target="_blank">Disabled</a>
      </li>
    </ul>
  </div>
  <div class="card-body">
    <h5 class="card-title"><b>Special Thanks</b></h5>
    <p class="card-text"><b>THNAKS FOR VISITING HERE ,HOPE YOU LEARN SOMETHING FORM AND TEST YOUR ABILITIES IN WELL WAY AND GOT SOME GOOD RESULT</b></p>
      <br />
      <p class="float-right"><a href="#">Back to top</a></p>
        <p>© 2020-2021 Company, JHA & SON'S Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    <a href="https://www.learncbse.in/" class="btn btn-primary" target="_blank">Go For It</a>
  </div>
</div>

                            

                                    <!--footer --->



    



















</asp:Content>

