using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace yemek_tarifleri
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-KCSQPRE\\SQLEXPRESS;Initial Catalog=DbYemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}