using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class yorumDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yorumid"];
           
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select yorumAdSoyad,yorumMail,yorumIcerik,yemekAd from tbl_yorumlar join tbl_yemekler on tbl_yemekler.yemekid=tbl_yorumlar.yemekid where yorumid=" + id, bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtad.Text = oku[0].ToString();
                    txtmail.Text = oku[1].ToString();
                    txticerik.Text = oku[2].ToString();
                    txtyemek.Text = oku[3].ToString();
                }
                bgl.baglanti().Close();
            }
           
        }

        protected void btnOnayla_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update tbl_yorumlar set yorumIcerik=@p1,yorumOnay=1 where yorumid="+id,bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txticerik.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}