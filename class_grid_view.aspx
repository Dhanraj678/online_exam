<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="class_grid_view.aspx.cs" Inherits="class_grid_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <h1></h1>



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

