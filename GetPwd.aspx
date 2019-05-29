<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPwd.aspx.cs" Inherits="GetPassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center">
            <tr>
                <td align="center" colspan="2" style="height: 32px">
                    <strong>取回口令</strong></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 32px;" align="right">
                    用户名:</td>
                <td style="width: 100px; height: 32px;">
                    <asp:TextBox ID="txtUserName" runat="server" AutoPostBack="True" OnTextChanged="txtUserName_TextChanged"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 27px;" align="right">
                    问题为:</td>
                <td style="width: 100px; height: 27px;">
                    <asp:Label ID="lblQuestion" runat="server" Width="155px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 33px;" align="right">
                    答案为:</td>
                <td style="width: 100px; height: 33px;">
                    <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 50px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
