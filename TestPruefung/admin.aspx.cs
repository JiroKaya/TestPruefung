using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestPruefung
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Delete_Article(object sender, EventArgs e)
        {
            int Articlenumber = Convert.ToInt32(txtArtNrLöschen.Text);
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlTestPruefungConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM tabArtikel WHERE Artikelnummer =@nummer", con);
            cmd.Parameters.AddWithValue("@nummer", Articlenumber);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }

        protected void Edit_Article(object sender, EventArgs e)
        {
            int Articlenumber = Convert.ToInt32(txtArtNr.Text);
            string Articlename = txtArtName.Text;
            double Articleprice = float.Parse(txtArtPreis.Text);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlTestPruefungConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE tabArtikel SET Artikelname =@name, Artikelpreis =@preis where Artikelnummer =@nummer", con);
            cmd.Parameters.AddWithValue("@name", Articlename);
            cmd.Parameters.AddWithValue("@preis", Articleprice);
            cmd.Parameters.AddWithValue("@nummer", Articlenumber);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
        }
    }
}