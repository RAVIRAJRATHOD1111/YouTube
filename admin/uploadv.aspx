<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="uploadv.aspx.cs" Inherits="admin_uploadv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mb-3 form-control form-control-lg " style="width:500px;">
        <asp:Label ID="Label1" runat="server" Text="Select Category"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control w-100"></asp:DropDownList><br />
        <asp:Label ID="Label2" runat="server" Text="Video Name"></asp:Label>
        <asp:TextBox ID="name" runat="server" CssClass="form-control w-100"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Video Title" ></asp:Label>
        <asp:TextBox ID="title" runat="server" CssClass="form-control w-100"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Text="Video Description"></asp:Label>
        <asp:TextBox ID="desc" runat="server" CssClass="form-control w-100"></asp:TextBox><br />
        <asp:Label ID="Label5" runat="server" Text="Chennl Name"></asp:Label>
        <asp:TextBox ID="chname" runat="server" CssClass="form-control w-100"></asp:TextBox><br />
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" /><br />
        <asp:Button ID="Button1" runat="server" Text="Upload" CssClass="btn btn-success" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Update" CssClass="btn btn-danger" OnClick="Button2_Click" />
    </div>
    <br /><br />  
    <div class="table">
        <asp:gridview id="gv" runat="server" cssclass="table" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>Edit</HeaderTemplate>
                <ItemTemplate>
                    <a href="uploadv.aspx?edi=<%#Eval("id")%>">
                        <img src="edit.png" height="30px" width="30px" />
                    </a>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField>
                <HeaderTemplate>Delete</HeaderTemplate>
                <ItemTemplate>
                    <a href="uploadv.aspx?did=<%#Eval("id")%>" class="btn-danger" onclick="return confirm('Delete')">
                        <%--<img src="edit.png" height="22px" width="22px" />--%>
                        <div class="div"></div>
                    </a>
                </ItemTemplate>
            </asp:TemplateField>

           <asp:BoundField DataField="id" HeaderText="id" />
           <asp:BoundField DataField="cname" HeaderText="Category" />
           <asp:BoundField DataField="name" HeaderText="Name" />
           <asp:BoundField DataField="title" HeaderText="Title" />
           <asp:BoundField DataField="desc" HeaderText="Description" />
           <asp:BoundField DataField="chname" HeaderText="Chennal Name" />
           <asp:BoundField DataField="video" HeaderText="Video" />

        </Columns>
        </asp:GridView>
    </div>
</asp:Content>

