using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] != null && Session["userName"].ToString() != "")//如果Session["userName"]的内容=NULL或者Session["userName"]里边的内容是空字符串
        { 
         if (!Page.IsPostBack)
            {
                ShowUserInfo();//执行函数里的代码
            }
        }
        else
        {
            Response.Redirect("index.aspx");//如果未登录，转到登录页面
        }
        
        }
    public void ShowUserInfo()
    {
        string strName = Session["userName"].ToString();//将Session ["userName"]里的值传给变量strName
        lblUserName.Text = strName;//将变量strName里的值传给 lblUserName.Text
        string sql = "select * from users where username='"+strName +"'";//定义SQL语句，根据用户名查询所有信息
        SqlDataReader myreader = DBHelper.execReader(sql);//调用DBHelper.execReader里的方法，将结果传给myreader
        myreader.Read();//将myreader里的内容在页面上显示
       lblTrueName.Text = myreader["truename"].ToString();//页面显示真实姓名
       lblSex.Text = myreader["sex"].ToString();//页面显示性别
       lblEmail.Text = myreader["email"].ToString();//页面显示EMail
       myreader.Close();//将变量关闭，释放

    }
}