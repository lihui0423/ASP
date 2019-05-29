using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] != null && Session["userName"].ToString() != "")//如果Session["userName"]的内容=NULL或者Session["userName"]里边的内容是空字符串
        {
            if (!Page.IsPostBack)//如果页面是提交之后返回的就跳过这段代码
            {
                ShowUserInfo();
            }
        }
        else
        {
            Response.Redirect("index.aspx");
        }

    }
    public void ShowUserInfo()
    {
        lblUserName.Text = Session["userName"].ToString();//将Session["userName"]里的内容传给lblUserName.Text
        string sql = "select * from Users where userName='"+lblUserName .Text +"'";//定义SQL语句根据用户名查询所有信息
        SqlDataReader reader = DBHelper.execReader(sql);//调用DBHelper.execReader，将结果保存在变量reader
        reader.Read();//将reader里的内容显示
      txtTrueName.Text = reader["trueName"].ToString();
      lstSex.SelectedValue = reader["sex"].ToString();
      lstQuestion.SelectedValue = reader["question"].ToString();
      txtAnswer .Text = reader["answer"].ToString();
      txtEmail .Text = reader["email"].ToString();
      reader.Close();//关闭变量

    
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Page .IsValid )
        {
        string name, realName, sex, question, answer, email;//定义变量
        name = Session["userName"].ToString();//将Session["userName"]里的内容传给name
        realName = txtTrueName.Text.Trim();//将真实姓名传给变量realname
        sex = lstSex.SelectedItem.Text.Trim();
        question = lstQuestion.SelectedItem.Text.Trim();
        answer = txtAnswer.Text.Trim();
        email = txtEmail.Text.Trim();
        string sql = @"UPDATE Users SET trueName=@trueName,sex=@sex," +
            "question=@question,answer=@answer,email=@email  WHERE userName='" + name + "'";//定义SQL语句根据用户名修改其他信息
        SqlParameter paramsTrueName = new SqlParameter("@truename", txtTrueName.Text);//将键盘输入的内容传给变量
        SqlParameter paramsSex = new SqlParameter("@sex", lstSex.SelectedItem.Text);
        SqlParameter paramsEmail = new SqlParameter("@email", txtEmail.Text);
        SqlParameter paramsQuestion = new SqlParameter("@question", lstQuestion.SelectedItem.Text);
        SqlParameter paramsAnswer = new SqlParameter("@answer", txtAnswer.Text);
        SqlParameter[] paramsValue = new SqlParameter[] { paramsTrueName, paramsSex, paramsEmail, paramsQuestion, paramsAnswer };
        int ret = DBHelper.execSql(sql, paramsValue);//调用 DBHelper里的execSql方法，然后传入SQL语句和数组值
         if (ret > 0)//如果结果大于0
        {
            Response.Redirect("index.aspx");//跳转登录页面
        }
        else
        {
            Response.Write("<script>alert('修改失败，请重试！')</script>");//弹出提示信息
        }
    }
       


        
    }
   
}