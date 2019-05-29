<%@ Page Language="C#" AutoEventWireup="true" CodeFile="show.aspx.cs" Inherits="show" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" 
        style="font-size: 30px; color: #000000; background-color: #808080;">
    
        Welcome my website<br />
        <br style="background-color: #669999" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserInfo.aspx" 
            ForeColor="Black">查看个人信息</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Update.aspx" 
            ForeColor="Black">修改个人信息</asp:HyperLink><br />
        <asp:LinkButton ID="lnkExit" runat="server" onclick="lnkExit_Click" 
            ForeColor="Black">退出系统</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
