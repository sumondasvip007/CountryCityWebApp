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
    public partial class CityAddUI : System.Web.UI.Page
    {  CityManager manager=new CityManager();
        ViewCityEntryWithCountryManager aManager=new ViewCityEntryWithCountryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountryDropDownList(); 
            }

            List<ViewCityEntryWithCountry> aListOfCities = new List<ViewCityEntryWithCountry>();
            aListOfCities = aManager.GetAllCityWithCountry();
            showCityGridView.DataSource = aListOfCities;
            showCityGridView.DataBind();
            
        }

        private void LoadCountryDropDownList()
        {
            List<Country> countries = manager.GetAllCountrys();
            countryDropDownList.DataSource = countries;
            countryDropDownList.DataTextField = "Name";
            countryDropDownList.DataValueField = "Id";
            countryDropDownList.DataBind();
        }

        protected void saveCityButton_Click(object sender, EventArgs e)
        {
            City aCity = new City();
            aCity.Name = nameCityTextBox.Value;
            aCity.About = Request.Form["edit"];
            aCity.NoOfDwellers = Convert.ToInt32(noOfDwellersTextBox.Value);
            aCity.Location = locationTextBox.Value;
            aCity.Weather = weatherTextBox.Value;
            aCity.CountryId = Convert.ToInt32(countryDropDownList.SelectedItem.Value);



            messageCityLabel.Text = manager.Save(aCity);
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}