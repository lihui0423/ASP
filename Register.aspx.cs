using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class index2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string sql1 = "select count(*) from users where username=@username ";//执行查询语句，查看用户名是否存在
        SqlParameter paramsUserName1 = new SqlParameter("@username", txtUserName.Text);//获取从键盘上输入的值
        SqlParameter[] paramsValue1 = new SqlParameter[] { paramsUserName1 };//定义一个 SqlParameter[] paramsValue1类型的数组，初始化
        int Ret = DBHelper.execScalar(sql1, paramsValue1);//调用 DBHelper里的execScalar方法，然后传入SQL语句和数组值
        if (Ret > 0)//如果查询结果大于0
        {
            Response.Write("<script>alert('用户名已存在！')</script>");//输出用户名已存在
            return;//返回
        }


        string sql = "insert into users (username,pwd,truename,sex,email,question,answer)values (@username,@pwd,@truename,@sex,@email,@question,@answer)";//执行一条插入语句，用来把键盘输入的值插入到数据库中
        SqlParameter paramsUserName = new SqlParameter("@username", txtUserName.Text);//将键盘输入的内容传给变量
        SqlParameter paramsPWD = new SqlParameter("@pwd", txtPWD.Text);
        SqlParameter paramsTrueName = new SqlParameter("@truename", txtTrueName.Text);
        SqlParameter paramsSex = new SqlParameter("@sex", lstSex.SelectedItem.Text);
        SqlParameter paramsEmail = new SqlParameter("@email", txtEmail.Text);
        SqlParameter paramsQuestion = new SqlParameter("@question", lstQuestion.SelectedItem.Text);
        SqlParameter paramsAnswer = new SqlParameter("@answer", txtAnswer.Text);
        SqlParameter[] paramsValue = new SqlParameter[] { paramsUserName, paramsPWD, paramsTrueName, paramsSex, paramsEmail, paramsQuestion, paramsAnswer };//将数组初始化
        int ret = DBHelper.execSql(sql, paramsValue);//调用 DBHelper里的execScalar方法，然后传入SQL语句和数组值
        if (ret > 0)//如果查询结果大于0
        {
            Response.Redirect("index.aspx");//返回登录界面
        }
        else
        {
            Response.Write("<script>alert('输入重复，请修改！')</script>");//重新输入
        }
    }

    
}