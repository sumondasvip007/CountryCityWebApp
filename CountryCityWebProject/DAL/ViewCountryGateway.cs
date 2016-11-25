using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using CountryCityWebProject.BLL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.DAL
{
    public class ViewCountryGateway
    {
        private string connectionString = @"Server=SUMON\SQLEXPRESS;Database=Project;Integrated Security=true";

        public List<ViewCountryModel> AllCountryLoodInGriddView(List<Country> listOfCountries)
        {
            List<ViewCountryModel> aViewCountryViewsList = new List<ViewCountryModel>();
            foreach (Country aCountry in listOfCountries)
            {
                string query = "SELECT CountryName,AboutCountry,COUNT(CityName) NoOfCities,SUM(NoOfDwellers) NoOfDwellers FROM viewCitiesview WHERE CountryName='" + aCountry.Name + "' GROUP BY CountryName,AboutCountry;";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    ViewCountryModel aViewCountryView = new ViewCountryModel();
                    aViewCountryView.NameCountry = reader["CountryName"].ToString();
                    aViewCountryView.AboutCountry = reader["AboutCountry"].ToString();
                    aViewCountryView.NoOfCitys = Convert.ToInt32(reader["NoOfCities"]);
                    aViewCountryView.NoOfDwellers = Convert.ToInt32(reader["NoOfDwellers"]);
                    aViewCountryViewsList.Add(aViewCountryView);
                    
                }
                connection.Close();
            }
            
            return aViewCountryViewsList;
        }
        public List<ViewCountryModel> SearchCountryLoodInGridView(string searchItem)
        {
            List<ViewCountryModel> aViewCountryViewsList = new List<ViewCountryModel>();

            string query = "SELECT CountryName,AboutCountry,COUNT(CityName) NoOfCities,SUM(NoOfDwellers) NoOfDwellers FROM viewCitiesview WHERE CountryName LIKE '%" + searchItem + "%' GROUP BY CountryName,AboutCountry";
            SqlConnection aconnection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, aconnection);
            aconnection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ViewCountryModel aViewCountryView = new ViewCountryModel();
                aViewCountryView.NameCountry = reader["CountryName"].ToString();
                aViewCountryView.AboutCountry = reader["AboutCountry"].ToString();
                aViewCountryView.NoOfCitys = Convert.ToInt32(reader["NoOfCities"]);
                aViewCountryView.NoOfDwellers = Convert.ToInt32(reader["NoOfDwellers"]);
                aViewCountryViewsList.Add(aViewCountryView);
                
            }
            aconnection.Close();
            return aViewCountryViewsList;
        }
    }
}