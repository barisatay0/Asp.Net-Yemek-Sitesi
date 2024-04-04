using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication2
{


    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif bgl = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            if (!string.IsNullOrEmpty(yemekid))
            {
                using (SqlConnection conn = bgl.baglanti())
                {
                    // Yemek adını getirme
                    SqlCommand komut = new SqlCommand("SELECT YemekAd FROM tbl_Yemekler WHERE yemekid = @p1", conn);
                    komut.Parameters.AddWithValue("@p1", yemekid);
                    SqlDataReader dr = komut.ExecuteReader();
                    if (dr.Read())
                    {
                        Label3.Text = dr["YemekAd"].ToString();
                    }
                    dr.Close(); // DataReader'ı kapat

                    // Yorumları listeleme
                    SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE yemekid = @p2", conn);
                    komut2.Parameters.AddWithValue("@p2", yemekid);
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DataList2.DataSource = dr2;
                    DataList2.DataBind();
                    dr2.Close(); // İkinci DataReader'ı kapat
                }
            }
            else
            {
                // yemekid değeri null veya boş olduğunda yapılacak işlemler buraya gelebilir
                // Örneğin, kullanıcıyı bir hata sayfasına yönlendirebilir veya başka bir işlem yapabilirsiniz.
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (yorumadsoyad,yorummail,yorumicerik,yemekid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}