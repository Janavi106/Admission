<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Admission.Views.Candidate.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../../Libs/Bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <form id="form1" runat="server" style="background-color:lightblue;height:890px;">

        <div class="container-fluid">
            <div class="row mt-5 mb-5">
            </div>
            <div class="row">
                <div class="col-4">
                </div>
                <div class="col-4" style="background-color: azure;">
                    <div>
                        <h3 class="text-primary mb-4 mt-3" style="text-align: center;">Track your Application</h3>
                    </div>
                    <div>


                        <div class="mb-3">
                            <label for="UserName" class="form-label">User Name</label>
                            <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" runat="server" />

                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="passwordTb" runat="server" />
                        </div>
                        <div class="row">
                            <div class="col-2">
                            </div>
                            <div class="col">
                                <label class="text-danger" id="ErrorMsg" runat="server"></label>

                            </div>
                             </div>
                        <asp:Button ID="LoginBtn" runat="server" class="btn btn-primary mb-4 w-100" Text="Login" OnClick="LoginBtn_Click" />



                    </div>
                </div>
                <div class="col-4">
                </div>

            </div>
            <div class="row">
            </div>
        </div>

    </form>
</body>
</html>
