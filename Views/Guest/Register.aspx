<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Admission.Views.Guest.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server" >
   <form>
    <div class="container-fluid" style="background-color:darkgrey; height:890px;">
        <div class="row mb-5 mt-2" >
        </div>
        <div class="row" >
            <div class="col-2" >
            </div>
            <div class="col-8">
                <div class="row">
                    <div class="col">
                       
                            <div class="mb-3">
                                <label for="SFname" class="form-label">First Name </label>
                                <input type="text" class="form-control" id="SFnameTb" aria-describedby="emailHelp" required="required" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="Semail" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="SemailTb" aria-describedby="emailHelp" required="required" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="gender" class="form-label">Gender</label>
                                <select class="form-control" id="genderTb" name="gender" required="required" runat="server">
                                    <option value="">Select Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="Regular" class="form-label">Regular</label>
                                <select class="form-control" id="RegularTb" name="Regular" required="required" runat="server">
                                    <option value="">Select</option>
                                    <option value="Full Time">Full Time</option>
                                    <option value="Part Time">Part Time</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="Address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="AddressTb" required="required" runat="server" />
                            </div>
                            <div class="row">
                                <div class="col-2"></div>
                                 <div class="col-8">
                                 <label id="ErrorMsg" class="text-danger align-self-center" runat="server"></label>
                                     </div>
                                <div class="col-2"></div>
                            </div>
                           
                            <asp:Button ID="SaveBtn" runat="server" Text="Register" class="btn btn-primary" OnClick="SaveBtn_Click"/>
                           
                        
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="SLname" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="SLnameTb" aria-describedby="emailHelp" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="passwordTb" required="required" runat="server">
                        </div>
                        <div class="mb-3">

                            <label for="Program" class="form-label">Program </label>
                            <select class="form-control" id="ProgramTb" name="Program" required="required" runat="server">
                                <option value="0">Select Program</option>
                                <option value="Undergraduate">Undergraduate</option>
                                <option value="Post Graduate">Post Graduate</option>
                                <option value="Doctorate">Doctorate</option>
                            </select>

                        </div>


                        <div class="mb-3">
                            <label for="PhN" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="PhNTb" required="required" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="District" class="form-label">District</label>
                            <input type="text" class="form-control" id="DistrictTb" required="required" runat="server">
                        </div>
                    </div>
                    <div class="col">
                        <div class="mb-3">
                            <label for="AppStatus" class="form-label">Application Status</label>
                            <input type="text" class="form-control" id="AppStatusTb" aria-describedby="emailHelp" required="required" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="DOB" class="form-label">Date of Birth </label>
                            <input type="Date" class="form-control" id="DOBTb" name="DOB" required="required" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="dept" class="form-label">Department</label>
                            <select class="form-control" id="deptTb" name="dept" required="required" runat="server">
                                <option value="0">Select Department </option>
                                <option value="BE-CSE">BE-CSE</option>
                                <option value="BE-ECE">BE-ECE</option>
                                <option value="BE-EEE">BE-EEE</option>
                                <option value="BE-MECH">BE-MECH</option>
                                <option value="ME-ECE">ME-ECE</option>
                                <option value="ME-CSE">ME-CSE</option>
                                <option value="BCOM">BCOM</option>
                                <option value="BBA">BBA</option>
                                <option value="BCA">BCA</option>
                                <option value="MCA">MCA</option>
                                <option value="MBA">MBA</option>
                                <option value="MCOM">MCOM</option>
                                <option value="PhD in CS">PhD in CS</option>
                                <option value="PhD">PhD</option>
                           </select>

                        </div>
                        <div class="mb-3">
                            <label for="Pincode" class="form-label">Pincode</label>
                            <input type="number" class="form-control" id="PincodeTb" required="required" runat="server">
                        </div>
                        <div class="mb-3">
                            <label for="State" class="form-label">State</label>
                            <input type="text" class="form-control" id="StateTb" required="required" runat="server">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2" >
            </div>
            <div class="row" style="background-color:darkgrey;" >
            </div>
           
        </div>

    </div>
        </form>
</asp:Content>
