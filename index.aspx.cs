using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sql = "select count(*) from users where userName='"+txtUserName .Text +"'and PWD='"+txtPwd .Text +"'";//定义SQL语句查询用户名和密码是否存在
        int ret = DBHelper.execScalar(sql);//调用DBHelper里的聚集函数execScalar（）
        string strName = txtUserName.Text;//将用户名的值传给变量strName
       if (ret > 0)//如果查出的结果>0
       {
           Session["userName"] = strName;//将用户名传给 Session ["userName"]，后边有用
           Response.Redirect("show.aspx");//跳转到主页面
      
       }
       else
       {
           Response.Write("<script>alert('您输入的用户名或密码错误！')</script>");//密码错误，重新输入
         
       }
    }
}