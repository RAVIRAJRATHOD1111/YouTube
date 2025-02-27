<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-control form-control-lg" style="width: 500px;">
    <asp:Label ID="Label1" runat="server" Text="Category Name" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="catnm" runat="server" CssClass="form-inline form-control mt-3"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="btn btn-success mt-3" OnClick="Button1_Click" />
     <asp:button id="Button2" runat="server" text="Update" cssclass="btn btn-danger mt-3" OnClick="Button2_Click"/> 
    </div>
     <br /><br /> 
    <div class="table">
        <asp:GridView ID="gv" runat="server" CssClass="table" AutoGenerateColumns="false">
             <Columns>
            <asp:TemplateField>
                <HeaderTemplate>Edit</HeaderTemplate>
                <ItemTemplate>
                    <a href="category.aspx?edi=<%#Eval("id")%>">
                        <img src="edit.png" height="30px" width="30px" />
                    </a>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>Delete</HeaderTemplate>
                <ItemTemplate>
                    <a href="category.aspx?did=<%#Eval("id")%>" class="btn-danger" onclick="return confirm('Delete')">
                        <%--<img src="edit.png" height="22px" width="22px" />--%>
                        <div class="div">

                        </div>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:boundfield datafield="id" headertext="id" />
            <asp:boundfield datafield="catname" headertext="category" />
        </Columns>
        </asp:GridView>
    </div>
</asp:Content>

