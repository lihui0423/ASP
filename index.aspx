<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            text-align: right;
            width: 476px;
        }
        .style4
        {
            width: 476px;
        }
    </style>
</head>
<body text="#000066">
    <form id="form1" runat="server">
    <table class="style1" border=1>
        <tr>
            <td align="center" colspan="2" style="font-size: 40px; color: #00FF00">
                用户登录</td>
        </tr>
        <tr>
            <td class="style3">
                用户名：</td>
            <td class="style2">
                <asp:TextBox ID="txtUserName" runat="server" style="text-align: left"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                密 码：</td>
            <td>
                <asp:TextBox ID="txtPwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="重置" />
&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="登录" onclick="Button2_Click" />
                &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">注册</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GetPwd.aspx">取回口令</asp:HyperLink>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
