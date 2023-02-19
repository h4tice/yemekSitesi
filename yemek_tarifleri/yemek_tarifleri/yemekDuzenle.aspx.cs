using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class yemekDuzenle : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["yemekid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_yemekler where yemekid="+id,bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtad.Text = oku[1].ToString();
                    txtmalzeme.Text = oku[2].ToString();
                    txttarif.Text = oku[3].ToString();
                    DropDownList1.Text = oku[7].ToString();
                }
                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriid";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
                bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName)); 

            SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,kategoriid=@p4,yemekResim=@p5 where yemekid="+id,bgl.baglanti());
            komut.Parameters.AddWithValue("@p1",txtad.Text);
            komut.Parameters.AddWithValue("@p2",txtmalzeme.Text);
            komut.Parameters.AddWithValue("@p3",txttarif.Text);
            komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p5", "~/resimler/"+FileUpload1.FileName);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // tüm yemekleri false yap
            SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0",bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //seçili yemeği günün yemei yap
            SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid="+id,bgl.baglanti());
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}