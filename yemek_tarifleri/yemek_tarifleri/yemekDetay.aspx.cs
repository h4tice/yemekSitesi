using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class yemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];
            SqlCommand komut = new SqlCommand("select yemekAd from tbl_yemekler where yemekid="+yemekid,bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                Label3.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();

            // YORUMLARI LİSTELEME  
            SqlCommand komut2 = new SqlCommand("select * from tbl_yorumlar where yemekid="+yemekid,bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_yorumlar (yorumAdSoyad,yorumMail,yorumIcerik,yemekid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtadsoyad.Text);
            komut.Parameters.AddWithValue("@p2",txtmail.Text);
            komut.Parameters.AddWithValue("@p3",txtyorum.Text);
            komut.Parameters.AddWithValue("@p4",yemekid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}