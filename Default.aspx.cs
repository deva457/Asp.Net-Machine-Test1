using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\Sandip Raikar\Documents\DB12.accdb");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        OleDbCommand cmd4 = con.CreateCommand();
        //cmd4.CommandType = CommandType.Text;
        cmd4.CommandText = "Insert into Table1 values('"
                            + TextBox1.Text + "','"
                            + TextBox2.Text + "','"
                             +TextBox3.Text + "','"
                            + TextBox4.Text + "')";
        cmd4.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('inserted successful');</script>");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //con.Open();
        //OleDbCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "select * from Table1 order by Productid ";
        //cmd.ExecuteNonQuery();
        //DataTable dt = new DataTable();
        //OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        //da.Fill(dt);
        //GridView1.DataSource = dt;
        //GridView1.DataBind();

        //con.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        OleDbCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Table1 order by Productid ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        con.Close();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
        TextBox4.Text = " ";
    }
}