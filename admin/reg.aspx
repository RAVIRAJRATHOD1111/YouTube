<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  </head>
  <body class="bg-dark">
      <form runat="server">
    <div class="container d-flex align-items-center justify-content-center vh-100">
      <div class="card shadow-lg p-4" style="width: 500px;">
            <div class="text-center d-flex justify-content-center mb-3 ">
                <h3 class="fw-bold ">REGISTRATION</h3>
            </div>
            <div class="text-center text-gray-600">
                <asp:TextBox ID="name" runat="server" CssClass="form-control mt-3" placeholder="Enter your Full Name"></asp:TextBox>
                <asp:TextBox ID="add" runat="server" CssClass="form-control mt-3" placeholder="Enter your address"></asp:TextBox>
                <asp:TextBox ID="city" runat="server" CssClass="form-control mt-3" placeholder="Enter your City"></asp:TextBox>                
                <asp:TextBox ID="email" runat="server" CssClass="form-control mt-3"  placeholder="Enter your Email"></asp:TextBox><br />
                <asp:Label ID="gender" runat="server" Text="Gender " CssClass="form-label d-inline text-black fw-bold me-5 "></asp:Label>
                <asp:RadioButton ID="male" runat="server" Text="Male" CssClass="form-check form-check-inline" AutoPostBack="True" />
                <asp:RadioButton ID="female" runat="server" Text="Female" CssClass="form-check form-check-inline" AutoPostBack="True" />
                <asp:TextBox ID="user" runat="server" CssClass="form-control mt-3" placeholder="Enter your Username" ValidationGroup="a"></asp:TextBox>       
                <asp:TextBox ID="pass" runat="server" CssClass="form-control mt-3" placeholder="Enter your Password" ValidationGroup="a"></asp:TextBox>
                <asp:TextBox ID="repass" runat="server" CssClass="form-control mt-3" placeholder="Enter your Re-Password"></asp:TextBox>                                         
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="repass" ControlToValidate="pass"></asp:CompareValidator>
             <div class="d-grid mt-3">
                <asp:Button ID="btnreg" runat="server" Text="Register" CssClass="btn btn-primary mb-3" OnClick="btnreg_Click"/>
            </div>
              <span>Already have an account? </span>
               <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-decoration-none" NavigateUrl="~/admin/login.aspx">Login</asp:HyperLink>
            </div>
     </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </form>
 </body>
</html>
