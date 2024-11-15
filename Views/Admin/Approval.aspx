<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMAster.Master" AutoEventWireup="true" CodeBehind="Approval.aspx.cs" Inherits="Admission.Views.Admin.Approval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
   
    <div class="container-fluid" >
        <div class="row mt-5">
            <h3 class="text-primary mb-4" style="text-align:center;"> Application List</h3>
            <div class="row">
                <div class="col">

                </div>
                <div class="col mb-3" style="text-align:center;">

                    <asp:Button ID="RejectBtn" runat="server" class="btn btn-outline-danger w-100" Text="Reject" OnClick="RejectBtn_Click"  />
                   
                   

                </div>
                <div class="col">
                     <asp:Button ID="ApproveBtn" runat="server" class="btn btn-outline-success w-100" Text="Approve" OnClick="ApproveBtn_Click" />
                </div>
                <div class="col">
                    
                     <asp:Button ID="ResetBtn" runat="server" class="btn btn-outline-warning w-100" Text="Reset" />
                </div>
                <div class="col">

                </div>
            </div>
            <div class="row">
                <div class="col">

                </div>
                <div class="col">

                   
                   
                   

                </div>
                <div class="col">
                     <label id="ErrorMsg" runat="server" class="text-danger"></label>
                </div>
                <div class="col">
                    
                    
                </div>
                <div class="col">

                </div>
            </div>
            <asp:gridview runat="server" class="table table-striped table-hover" id="AppTable" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AppTable_SelectedIndexChanged" OnSelectedIndexChanging="AppTable_SelectedIndexChanging"></asp:gridview>

          </div>
    </div>
        
</asp:Content>
