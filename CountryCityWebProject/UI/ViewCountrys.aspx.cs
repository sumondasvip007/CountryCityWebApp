using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityWebProject.BLL;

namespace CountryCityWebProject.UI
{
    public partial class ViewCountrys : System.Web.UI.Page
    {
        ViewCountryManager aViewCountryManager=new ViewCountryManager();
        CityManager aCityManager=new CityManager();
        protected void Page_Load(object sender, EventArgs e)
        {

            viewCountryGridView.DataSource = aViewCountryManager.AllCountryLoodInGriddView(aCityManager.GetAllCountrys());
            viewCountryGridView.DataBind();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string searchItem = countryNameTextBox.Text;
            viewCountryGridView.DataSource = aViewCountryManager.SearchCountryLoodInGridView(searchItem);
            viewCountryGridView.DataBind();
        }

        

        protected void viewCountryGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            viewCountryGridView.PageIndex = e.NewPageIndex;
            viewCountryGridView.DataBind();
        }

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }


    }
}