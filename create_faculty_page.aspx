<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="create_faculty_page.aspx.cs" Inherits="create_faculty_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-transform: uppercase;
            color: black;
            font-size: 45pt;
            font-weight: 700;
            font-family: "Cooper Std Black";
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



                                <!-- <div class="hero-wrap js-fullheight" style="background-image: url(''); width: 1500; height: 150px;"
        data-stellar-background-ratio="0.5" >
       
    </div>-->
    
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" style="width:100%;height:500px" >
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1600x900/?education" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x900/?teacher" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x900/?school" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>





    <!--for background image--->

    <!--for text editor-->




                     <div class="ftco-section bg-light">
         <b><center><h1><span class="auto-style1">FILL THE DETAILS FOR FACULTTY</span></h1></center></b>
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
                  <label class="font-weight-bold" for="txt_id">ID</label>
                  
                    <asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="pls don't write anything"></asp:TextBox>
                </div>
              </div>



                     <!--text work-->


                     
                     <br />


                      <div class="row form-group">
                                    <div class="col-md-5 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_password">PASSWORD</label>
                                        <!--  <input type="password" id="Text6" class="form-control" placeholder="EG.@1234@">-->
                                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                                    </div>
                                </div>





                   










                     <div class="row form-group">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="txt_name" >NAME</label>
              <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                        <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                </div>
              </div>
              
              
            

            
             
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


              <div class="row form-group ">
                <div class="col-md-5 mb-3 mb-md-0">
                  <label class="font-weight-bold" for="Txt_aadhar">AADHAR_CARD</label>
                 <!-- <input type="text" id="Text3" class="form-control" placeholder="EG.1234432">-->
                  
        <asp:TextBox ID="Txt_aadhar" runat="server" class="form-control"></asp:TextBox>
                </div>
              </div>
             

              <div class="row form-group">
               <!-- <div class="col-md-12"><h3>EMAIL</h3></div>-->
                    <div class="col-md-5 mb-3 mb-md-0">
                 <label class="font-weight-bold" for="txt_email">EMAIL</label>
              
          
        <asp:TextBox ID="txt_email" runat="server"  class="form-control"></asp:TextBox>
                </div>
              
                     </div>
            </div>
          </div>        
         

                                             <div class="row form-group">
                                    <div class="col-md-3 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_date">DATE</label>
                                        <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                              <asp:TextBox ID="txt_date" runat="server" class="form-control" TextMode="Date"></asp:TextBox>


                                    </div>
                                </div>

          
          <br />





                     <!--text work here-->

         <!--for button implementation-->
         <center>
        
    
    <asp:Button ID="btn_save" runat="server" Text="SAVE" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_save_Click"  />
    
    
   
         </center>
         
         <!--button ends here-->

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

