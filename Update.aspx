<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .style1
        {
            width: 100%;
        }
        . style2
        {
            text-align:right ;
            }
         .style2
         {
             text-align: left;
         }
         .style3
         {
             text-align: right;
         }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table class="style1" align="center" border=1>
            <tr>
                <td colspan="2" align="center" 
                    style="font-size: 40px; color: #000000; font-weight: 100;">
                    修改个人信息</td>
            </tr>
            <tr>
                <td class="style3" width="50%">
                    用户名：</td>
                <td class="style2">
                    <asp:Label ID="lblUserName" runat="server" Text="Label" Width="100px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    真实姓名：</td>
                <td class="style2">
                    <asp:TextBox ID="txtTrueName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    性别：</td>
                <td class="style2" align="left"  >
                    <asp:RadioButtonList ID="lstSex" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
           
            <tr>
                <td class="style3">
                    密码查询问题：</td>
                <td class="style2">
                    <asp:DropDownList ID="lstQuestion" runat="server">
                        <asp:ListItem>你最喜欢的动物</asp:ListItem>
                        <asp:ListItem>你最喜欢的明星</asp:ListItem>
                        <asp:ListItem>你的名字</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    密码查询答案：</td>
                <td class="style2">
                    <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAnswer" Display="Dynamic" ErrorMessage="答案不能为空！" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    E_mail:</td>
                <td class="style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="E-mail不能为空！" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align ="center" colspan="2" >
                    <input id="Reset1" type="reset" value="重置" onclick="return Reset1_onclick()" /><asp:Button ID="Button1" runat="server" onclick="Button1_Click1 "
                        style="height: 21px" Text="提交" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
