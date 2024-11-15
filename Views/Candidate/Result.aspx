<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Candidate/Candidate.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Admission.Views.Candidate.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mybody" runat="server">
    <div class="container-fluid">
        <div class="row" >
        </div>
         <div class="row mt-2" style="height:700px">
             <div class="col-3" style="background-color:papayawhip;">
             
             </div>
              
              <div class="col-6 " style="background-color:papayawhip;">
                  
                  <asp:gridview ID="ResultTb" class="table"  runat="server"></asp:gridview>
             </div>
             <div class="col-3" style="background-color:papayawhip;">
             
             </div>
        </div>
         <div class="row">

        </div>

    </div>
</asp:Content>
