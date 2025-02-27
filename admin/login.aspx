<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  </head>
  <body class="bg-dark">
      <form runat="server">
    <div class="container d-flex align-items-center justify-content-center vh-100">
      <div class="card shadow-lg p-4" style="width: 500px;">
        <div class="card-body">
            <h3 class="text-center mb-4 fw-bold">LOGIN</h3>
          </div>
            <div class="mb-3 text-center mt-4">
                <asp:Label ID="Label1" runat="server" Text="Username"  CssClass="form-label"></asp:Label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control mt-2"></asp:TextBox><br />
                <asp:Label ID="Label2" runat="server" Text="Password"  CssClass="form-label"></asp:Label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control mt-2"></asp:TextBox>
            <div class="d-grid">
                <asp:Button ID="btnlogin" runat="server" Text="LOGIN" CssClass="btn btn-primary mt-3 mb-3" OnClick="btnlogin_Click"/>
            </div>
             <span> Don’t have an account?</span>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-decoration-none" NavigateUrl="~/admin/reg.aspx">Register</asp:HyperLink>
            </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  </form>
 </body>
</html>
