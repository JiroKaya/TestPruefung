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
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Order(object sender, EventArgs e)
        {
            string Kundenname = txtKDName.Text;
            string Kundenvorname = txtKDVorname.Text;
            int Artikelnummer = Convert.ToInt32(txtArtNr.Text);
            int Artikelanzahl = Convert.ToInt32(txtArtAnz.Text);

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlTestPruefungConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO tabBestellung (Kundenname, Kundenvorname, Artikelnummer, Artikelanzahl) VALUES (@name, @vorname, @nummer, @anzahl)", con);
            cmd.Parameters.AddWithValue("@name", Kundenname);
            cmd.Parameters.AddWithValue("@vorname", Kundenvorname);
            cmd.Parameters.AddWithValue("@nummer", Artikelnummer);
            cmd.Parameters.AddWithValue("@anzahl", Artikelanzahl);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtKDName.Text = "";
            txtKDVorname.Text = "";
            txtArtNr.Text = "";
            txtArtAnz.Text = "";
        }
    }
}