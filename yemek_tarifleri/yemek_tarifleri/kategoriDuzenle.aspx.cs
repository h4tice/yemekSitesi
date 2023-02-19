using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class kategoriAdminDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["kategoriid"]; //formlar arası id aktarımı
            if (Page.IsPostBack == false) //sayfa yeniden yüklenmediyse
            {
                SqlCommand komut = new SqlCommand("select * from tbl_kategoriler where kategoriid=" + id, bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtad.Text = oku[1].ToString();
                    txtadet.Text = oku[2].ToString();
                }
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_kategoriler set kategoriAd=@p1,kategoriAdet=@p2 where kategoriid="+id,bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtad.Text);
            komut.Parameters.AddWithValue("@p2", txtadet.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}