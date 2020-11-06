s<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="subject_master_page.aspx.cs" Inherits="subject_page" %>

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



                     <%-- <div class="hero-wrap js-fullheight" style="background-image: url('images/.jpg'); width: 1500; height: 150px;"
        data-stellar-background-ratio="0.5" >

                         
       
    </div>--%>
    
    <!--for background image--->
                        



                                 <div class="ftco-section bg-light">
                <b>
                    <center><h1><span class="auto-style1">SUBJECT PAGE</span></h1></center>
                </b>
                <div class="container">
                    <div class="row">

                        <div class="col-md-12 col-lg-8 mb-5">

                            

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

                                        <asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="pls don't write anything" ReadOnly="True"></asp:TextBox>
                                    </div>
     
                                    
                                                               </div>

                            <br />

                             <div class="row form-group">
                                    <div class="col-md-5 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_name">NAME</label>
                                        <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                                        <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                                    </div>
                                </div>

                            <br />


                               <div class="row form-group">
                            <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="txt_DISCREPTION">DISCREPTION</label>
                                <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
                                <asp:TextBox ID="txt_DISCREPTION" runat="server" TextMode="MultiLine" Rows="5" Columns="30" class="form-control"></asp:TextBox>
                            </div>
                        </div>



<br />

                              <!--for button implementation-->
                        <center>
        
    
    <asp:Button ID="btn_NEW" runat="server" Text="NEW" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_NEW_Click"   />
    
                            <asp:Button ID="btn_save" runat="server" Text="SAVE" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_save_Click"  />
    
                            <asp:Button ID="btn_list" runat="server" Text="LIST" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_list_Click"   />
    
            
                            
    
         </center>

                        <!--button ends here-->










                           
                    

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

