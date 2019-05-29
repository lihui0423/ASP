using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class GetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "select question,PWD,answer from Users where userName='" + txtUserName.Text.Trim() + "'";//定义查询语句根据用户名查询问题，答案，密码
        SqlDataReader reader = DBHelper.execReader(sql);//调用 DBHelper.execReader方法，将结果保存在变量reader里
    if (reader.Read())
    {

        if (txtAnswer.Text.Trim() == reader["answer"].ToString())//如果用户的答案和reader里的答案一致
        {
            Response.Write("<script>alert(' 你的密码是:" + reader["PWD"].ToString() + " ')</script>");//输出你的密码是

            //  Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write("<script>alert('回答问题错误!')</script>");//回答错误
        }
        
    }
       
          
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {
        string sql = "select question,PWD,answer from Users where userName='" + txtUserName.Text.Trim() + "'";//定义查询语句根据用户名查询问题，答案，密码
        SqlDataReader reader = DBHelper.execReader(sql);//调用 DBHelper.execReader方法，将结果保存在变量reader里
         if (!reader.Read())
         {
             lblQuestion.Text = "";
             Button1.Enabled = false;
             Response.Write("<script>alert('查找的用户名不存在!')</script>");
             return;
         }
         else
         {
             lblQuestion.Text = reader["question"].ToString();
             Button1.Enabled = true;
         }
    
    }
}