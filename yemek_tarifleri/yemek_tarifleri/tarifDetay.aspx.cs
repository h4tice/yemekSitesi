using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public partial class tarifDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["tarifid"];
            if (Page.IsPostBack==false)
            {
                SqlCommand komut = new SqlCommand("select * from tbl_tarifler where tarifid="+id,bgl.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    txtad.Text = oku[1].ToString();
                    txtmalzeme.Text = oku[2].ToString();
                    txtyapilis.Text = oku[3].ToString();
                    txtoneren.Text = oku[5].ToString();
                    txtmail.Text = oku[6].ToString();
                }
                bgl.baglanti().Close();

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
            SqlCommand komut = new SqlCommand("update tbl_tarifler set tarifDurum=1 where tarifid="+id,bgl.baglanti());
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("insert into tbl_yemekler (yemekAd,yemekMalzeme,yemekTarif,kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", txtad.Text);
            komut2.Parameters.AddWithValue("@p2", txtmalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", txtyapilis.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();

            //Kategori Sayısını Arttırma
            SqlCommand komut3 = new SqlCommand("update tbl_kategoriler set kategoriAdet = kategoriAdet + 1 where kategoriid=" + DropDownList1.SelectedValue, bgl.baglanti());
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();


        }
    }
}