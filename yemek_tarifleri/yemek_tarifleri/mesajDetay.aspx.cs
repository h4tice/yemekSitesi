using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class mesajDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["mesajid"];
            if (Page.IsPostBack == false)
            {
                 SqlCommand komut = new SqlCommand("select * from tbl_mesajlar where mesajid="+id,bgl.baglanti());
                 SqlDataReader oku = komut.ExecuteReader();
                 while (oku.Read())
                 {
                    txtad.Text = oku[1].ToString();
                    txtbaslik.Text = oku[2].ToString();
                    txtmail.Text = oku[3].ToString();
                    txticerik.Text = oku[4].ToString();
                 }
                 bgl.baglanti().Close();
            }
           
        }
    }
}