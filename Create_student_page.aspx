<%@ Page Title="" Language="C#" MasterPageFile="~/Student_master_page.master" AutoEventWireup="true" CodeFile="Create_student_page.aspx.cs" Inherits="Create_student_page" %>

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






                            <div class="hero-wrap js-fullheight" style="background-image: url('https://source.unsplash.com/1600x900/?education'); width: 900px;"
        data-stellar-background-ratio="0.5" >
       

       
        
        <div style="margin-left: 900px; width: 1000px;">






            <!--for text editor-->

            <div class="ftco-section bg-light">
                <b>
                    <center><h1><span class="auto-style1">FILL THE DETAILS</span></h1></center>
                </b>
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

                                        <asp:TextBox ID="txt_id" runat="server" class="form-control" placeholder="pls don't write anything" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>


                                <br />

                                <div class="row form-group">
                                    <div class="col-md-5 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_password">PASSWORD</label>
                                        <!--  <input type="password" id="Text6" class="form-control" placeholder="EG.@1234@">-->
                                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" class="form-control"></asp:TextBox>
                                    </div>
                                </div>







                                <!--text work-->


                                <div class="row form-group">
                                    <div class="col-md-5 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_name">NAME</label>
                                        <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                                        <asp:TextBox ID="txt_name" runat="server" class="form-control" placeholder="Ex: Tata docomo"></asp:TextBox>


                                    </div>
                                </div>







                                <div class="form-field">

                                    <div class="select-wrap">
                                        <label class="font-weight-bold" for="drp_class">CLASS</label>
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
                            <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="txt_address">ADDRESS</label>
                                <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
                                <asp:TextBox ID="Txt_address" runat="server" TextMode="MultiLine" Rows="5" Columns="30" class="form-control"></asp:TextBox>
                            </div>
                        </div>


                        <div class="row form-group">
                            <!--<div class="col-md-12"><h3>ADDRESS</h3></div>-->
                            <div class="col-md-12 mb-3 mb-md-0">
                                <label class="font-weight-bold" for="FileUpload1">candidate photo</label>
                                <!-- <textarea name="" class="form-control" id="" cols="30" rows="5"></textarea>-->
                                <asp:FileUpload ID="txt_image" runat="server" class="form-control-file" />
                            </div>
                        </div>


                        <


                          <div class="row form-group">
                                    <div class="col-md-12 mb-3 mb-md-0">
                                        <label class="font-weight-bold" for="txt_date">DATE</label>
                                        <!-- <input type="text" id="fullname" class="form-control" placeholder="EG.DHANRAJ">-->
                              <asp:TextBox ID="txt_date" runat="server" class="form-control" TextMode="Date"></asp:TextBox>


                                    </div>
                                </div>
                        


                        <!--for button implementation-->
                        <center>
          <asp:Button ID="btn_new" runat="server" Text="New" class="btn btn-primary" 
                     style="width:100px;" />
    
    <asp:Button ID="btn_save" runat="server" Text="SAVE" class="btn btn-primary" 
                     style="width:100px;"  />
    
    
    <asp:Button ID="btn_update" runat="server" Text="Update" class="btn btn-primary" 
                     style="width:100px;" />
    
    <asp:Button ID="btn_search" runat="server" Text="Search" class="btn btn-primary" 
                     style="width:100px;" />
        
        <asp:Button ID="btn_delete" runat="server" Text="Delete" class="btn btn-primary" 
                     style="width:100px;"  />
         </center>

                        <!--button ends here-->


























                        </form>
                    </div>
                </div>
            </div>
        </div>

        </div>
            </div>

                

    
     















</asp:Content>

