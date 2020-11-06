<%@ Page Title="" Language="C#" MasterPageFile="~/faculty_master_page.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






                            
      <!--creating our contact us form -->

            <div class="container my-5">

                  <br />
                <br />
                <br />
                <br />

                    <form>
                        <div class="form-group">
                          <label for="exampleFormControlInput1">Email address</label>
                          <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                        </div>
                        <div class="form-group">
                          <label for="exampleFormControlSelect1">Select your quary</label>
                          <select class="form-control" id="exampleFormControlSelect1">
                            <option>Web</option>
                            <option>Tech</option>
                            <option>Data</option>
                            <option>Server</option>
                            <option>Other</option>
                          </select>
                        </div>
                       


                        <div class="form-group row">
                            <div class="col-sm-2">Are you member ?</div>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck1">
                                <label class="form-check-label" for="gridCheck1">
                                  Yes
                                </label>
                              </div>
                            </div>
                          </div>

                        <div class="form-group row">
                            <div class="col-sm-2">Are you codder ?</div>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck2">
                                <label class="form-check-label" for="gridCheck2">
                                  Yes
                                </label>
                              </div>
                            </div>
                          </div>

                        <div class="form-group row">
                            <div class="col-sm-2">Are you teacher ?</div>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck3">
                                <label class="form-check-label" for="gridCheck3">
                                  Yes
                                </label>
                              </div>
                            </div>
                          </div>

                        <div class="form-group row">
                            <div class="col-sm-2">Are you student ?</div>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck4">
                                <label class="form-check-label" for="gridCheck4">
                                  Yes
                                </label>
                              </div>
                            </div>
                          </div>

                        <div class="form-group row">
                            <div class="col-sm-2">Are you professional ?</div>
                            <div class="col-sm-10">
                              <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="gridCheck5">
                                <label class="form-check-label" for="gridCheck5">
                                  Yes
                                </label>
                              </div>
                            </div>
                          </div>




                        <div class="form-group">
                          <label for="exampleFormControlTextarea1">Elaborate your issue </label>
                          <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>


                        <div class="form-group">
                          <label for="exampleFormControlTextarea2">Tell me about your-self </label>
                          <textarea class="form-control" id="exampleFormControlTextarea2" rows="3"></textarea>
                        </div>



                         <asp:Button ID="btn_submit" runat="server" Text="Submit" class="btn btn-primary" 
                     style="width:100px;" OnClick="btn_submit_Click1"  />

                      

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

