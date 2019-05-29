using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class show : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] == null || Session["userName"].ToString() == "")//如果Session["userName"]的内容=NULL或者Session["userName"]里边的内容是空字符串
        {
            
            Response.Redirect("index.aspx");//如果未登录，则转向登录页面
        }
    }
    protected void lnkExit_Click(object sender, EventArgs e)//退出系统
    {
        Session["userName"] = "";//将Session["userName"]里的内容清空
        Session.Abandon();//将内存里的Session["userName"]的值清空
        Response.Redirect("index.aspx");//跳转到登录页面
    }
}