using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityWebProject.BLL;

namespace CountryCityWebProject.UI
{
    public partial class ViewCities : System.Web.UI.Page
    {   ViewCityManager aCityManager=new ViewCityManager();
        CityManager manager=new CityManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoodCountryNameDropDownList();
            }
            LoodGridView();
        }

        //protected void viewCityGridView_PageIndexChanged(object sender, GridViewPageEventArgs e)
        //{
        //    viewCityGridView.PageIndex = e.NewPageIndex;
        //    viewCityGridView.DataBind();

        //}
        private void LoodGridView()
        {
            viewCityGridView.DataSource = aCityManager.ShowAllCityAndCountry();
            viewCityGridView.DataBind();
        }

        private void LoodCountryNameDropDownList()
        {
            countryNameDropDownList.DataSource = manager.GetAllCountrys();
            countryNameDropDownList.DataValueField = "Id";
            countryNameDropDownList.DataTextField = "Name";
            countryNameDropDownList.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {

            if (cityNameRadioButton.Checked)
            {
                string searchItem = cityNameTextBox.Text;
                viewCityGridView.DataSource = aCityManager.SeacrhResultForCityInViewCity(searchItem);
                viewCityGridView.DataBind();
            }
            if (countryNameRadioButton.Checked)
            {
                string searchItem = countryNameDropDownList.SelectedItem.Text;
                viewCityGridView.DataSource = aCityManager.SeacrhResultForCountryInViewCity(searchItem);
                viewCityGridView.DataBind();
            }
        }

        protected void viewCityGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCityGridView.PageIndex = e.NewPageIndex;
            viewCityGridView.DataBind();
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }

       
    }
}