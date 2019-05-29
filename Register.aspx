<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="index2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .style1
        {
            width: 80%;
        }
        . style2
        {
            text-align:right ;
            }
         .style2
         {
             width: 378px;
         }
         .style3
         {
             height: 44px;
         }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {

        }

// ]]>
    </script>
</head>
<body text="#3399ff">
    <form id="form1" runat="server">
    <div>
     <table class="style1" align="center" border=1  >
            <tr>
                <td colspan="2" align="center" 
                    class="style3" bgcolor="White" style="font-size: 50px; color: #00FF00;">
                   
                    用户注册</td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    用户名：</td>
                <td bgcolor="White">
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUserName" ErrorMessage="姓名必填" 
                        ForeColor="#FF3300" Display="Dynamic">用户名不能为空！</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    真实姓名：</td>
                <td bgcolor="White">
                    <asp:TextBox ID="txtTrueName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    性别：</td>
                <td bgcolor="White">
                    <asp:RadioButtonList ID="lstSex" runat="server" 
                        RepeatDirection="Horizontal" style="text-align: left">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    登录密码：</td>
                <td bgcolor="White">
                    <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPWD" ErrorMessage="RequiredFieldValidator" 
                        ForeColor="#FF3300">密码不能为空！</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    确认密码：</td>
                <td bgcolor="White">
                    <asp:TextBox runat="server" TextMode="Password" ID="txtPWD2"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPWD" ControlToValidate="txtPWD2" Display="Dynamic" 
                        ErrorMessage="两次密码不一致" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    密码查询问题：</td>
                <td bgcolor="White">
                    <asp:DropDownList ID="lstQuestion" runat="server">
                        <asp:ListItem>你最喜欢的动物</asp:ListItem>
                        <asp:ListItem>你最喜欢的明星</asp:ListItem>
                        <asp:ListItem>你的名字</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    密码查询答案：</td>
                <td bgcolor="White">
                    <asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtAnswer" Display="Dynamic" ErrorMessage="答案不能为空！" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style2" bgcolor="White">
                    E_mail:</td>
                <td bgcolor="White">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="E-mail不能为空！" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td  colspan="2" align="center" bgcolor="White" >
                    <input id="Reset1" type="reset" value="重置"  onclick="return Reset1_onclick()" /><asp:Button ID="Button1" 
                        runat="server" onclick="Button1_Click1 " Text="提交" />
                </td>
            </tr>
        </table>
    
    
    </div>
    </form>
    </body>
</html>
