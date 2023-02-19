using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace yemek_tarifleri
{
    public partial class iletisim : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into tbl_mesajlar (mesajGonderen,mesajMail,mesajBaslik,mesajIcerik) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtad.Text);
            komut.Parameters.AddWithValue("@p2", txtmail.Text);
            komut.Parameters.AddWithValue("@p3", txtkonu.Text);
            komut.Parameters.AddWithValue("@p4", txtmesaj.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
            Response.Write("mesajınız alınmıştır");
        }
    }
}