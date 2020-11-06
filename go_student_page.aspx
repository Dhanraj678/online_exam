<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="go_student_page.aspx.cs" Inherits="go_student_page" %>

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
         <b><center><h2><span class="auto-style1">SELECT YOUR CLASS & SUBJECT</span></h2></center></b>
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
              
            


                      <br />


                    
              
              
            
                     <center>
            
             
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



                         <br />
                         <br />
                          <asp:Button ID="btn_new" runat="server" Text="GO" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_new_Click"  />

                          <asp:Button ID="Button1" runat="server" Text="Last test result" class="btn btn-danger" 
                     style="width:200px;" OnClick="Button1_Click"   />

                         </center>



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

