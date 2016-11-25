using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityWebProject.BLL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.UI
{
    public partial class index : System.Web.UI.Page
    {
        CountryManager manager = new CountryManager();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            LoodCountryInGridView();
        }

        private void LoodCountryInGridView()
        {
            List<Country> aListOfCities = new List<Country>();
            aListOfCities = manager.GetAllCountry();
            showGridView.DataSource = aListOfCities;
            showGridView.DataBind();
        }


        protected void saveButton_Click(object sender, EventArgs e)
        {
            Country aCountry=new Country();

            aCountry.Name = nameTextBox.Value;
            aCountry.About = Request.Form["edit"];
           


            messageLabel.Text = manager.Save(aCountry);

            
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}