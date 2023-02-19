using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class yemekler : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = false;

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];
                //KATEGORİ LİSTESİ
                SqlCommand komut2 = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader oku2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriid";
                DropDownList1.DataSource = oku2;
                DropDownList1.DataBind();
            }

            //SİLME İŞLEMİ
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("delete from tbl_yemekler where yemekid=" + id, bgl.baglanti());
                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();

                SqlCommand komut3 = new SqlCommand("update tbl_kategoriler set kategoriAdet=kategoriAdet-1 where kategoriid=(select kategoriid from tbl_yemekler where yemekid=@p1)",bgl.baglanti());
                komut3.Parameters.AddWithValue("@p1", id);
                komut3.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            // YEMEK LİSTESİ
            SqlCommand komut = new SqlCommand("select * from tbl_yemekler",bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void btnekle_Click(object sender, EventArgs e)
        {
            //YEMEK EKLEME
            SqlCommand komut = new SqlCommand("insert into tbl_yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtad.Text);
            komut.Parameters.AddWithValue("@p2", txtmalzeme.Text);
            komut.Parameters.AddWithValue("@p3", txttarif.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //KATEGORİ SAYISINI ARTIRMA
            SqlCommand komut2 = new SqlCommand("update tbl_kategoriler set kategoriAdet=kategoriAdet+1 where kategoriid="+DropDownList1.SelectedValue,bgl.baglanti());
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}