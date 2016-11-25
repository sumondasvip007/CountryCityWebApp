using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.DAL
{
    public class ViewCityGateway
    {
        private string connectionString = @"Server=SUMON\SQLEXPRESS;Database=Project;Integrated Security=true";


        public List<ViewCitiesViewModel> ShowAllCityAndCountry()
        {
            List<ViewCitiesViewModel> aViewCitiesViewModels = new List<ViewCitiesViewModel>();

            string query = "SELECT * FROM viewCitiesview ";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = Convert.ToInt32(reader["Id"]);
                string cityName = reader["CityName"].ToString();
                string aboutCity = reader["AboutCity"].ToString();
                int noOfDwellors = Convert.ToInt32(reader["NoOfDwellers"]);
                string location = reader["Location"].ToString();
                string weather = reader["Weather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string aboutCountry = reader["AboutCountry"].ToString();
                ViewCitiesViewModel aModel = new ViewCitiesViewModel(id, cityName, aboutCity, noOfDwellors, location, weather, countryName, aboutCountry);

                aViewCitiesViewModels.Add(aModel);
            }
            return aViewCitiesViewModels;
        }
        public List<ViewCitiesViewModel> SeacrhResultForCountryInViewCity(string searchItem)
        {
            List<ViewCitiesViewModel> aViewCitiesViewModels = new List<ViewCitiesViewModel>();

            string query = "SELECT * FROM viewCitiesview ";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = Convert.ToInt32(reader["Id"]);
                string cityName = reader["CityName"].ToString();
                string aboutCity = reader["AboutCity"].ToString();
                int noOfDwellors = Convert.ToInt32(reader["NoOfDwellers"]);
                string location = reader["Location"].ToString();
                string weather = reader["Weather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string aboutCountry = reader["AboutCountry"].ToString();
                ViewCitiesViewModel aModel = new ViewCitiesViewModel(id, cityName, aboutCity, noOfDwellors, location, weather, countryName, aboutCountry);

                if (countryName == searchItem)
                {
                    aViewCitiesViewModels.Add(aModel);
                }

            }
            return aViewCitiesViewModels;
        }

        public List<ViewCitiesViewModel> SeacrhResultForCityInViewCity(string searchItem)
        {
            List<ViewCitiesViewModel> aViewCitiesViewModels = new List<ViewCitiesViewModel>();

            string query = "SELECT * FROM viewCitiesview where CityName Like '%" + searchItem + "%'";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int id = Convert.ToInt32(reader["Id"]);
                string cityName = reader["CityName"].ToString();
                string aboutCity = reader["AboutCity"].ToString();
                int noOfDwellors = Convert.ToInt32(reader["NoOfDwellers"]);
                string location = reader["Location"].ToString();
                string weather = reader["Weather"].ToString();
                string countryName = reader["CountryName"].ToString();
                string aboutCountry = reader["AboutCountry"].ToString();
                ViewCitiesViewModel aModel = new ViewCitiesViewModel(id, cityName, aboutCity, noOfDwellors, location, weather, countryName, aboutCountry);
                aViewCitiesViewModels.Add(aModel);
            }
            return aViewCitiesViewModels;
        }
    }
}