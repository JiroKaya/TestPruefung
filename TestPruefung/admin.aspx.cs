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
            if (HttpContext.Current.Session["isLoggedIn"] != "True")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Delete_Article(object sender, EventArgs e)
        {
            int number = Convert.ToInt32(txtArtNrLöschen.Text);
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlTestPruefungConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM tabArtikel WHERE Artikelnummer =@number", con);
            cmd.Parameters.AddWithValue("@number", number);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtArtNrLöschen.Text = "";
        }

        protected void Edit_Article(object sender, EventArgs e)
        {
            int ArtNummer = Convert.ToInt32(txtArtNr.Text);
            string ArtName = txtArtName.Text;
            float ArtPreis = float.Parse(txtArtPreis.Text);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlTestPruefungConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE tabArtikel SET Artikelname =@name, Artikelpreis =@preis where Artikelnummer =@number", con);
            cmd.Parameters.AddWithValue("@name", ArtName);
            cmd.Parameters.AddWithValue("@preis", ArtPreis);
            cmd.Parameters.AddWithValue("@number", ArtNummer);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtArtNr.Text = "";
            txtArtName.Text = "";
            txtArtPreis.Text = "";
        }
    }
}