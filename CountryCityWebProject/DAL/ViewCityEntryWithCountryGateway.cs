using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.DAL
{   
    
    public class ViewCityEntryWithCountryGateway
    {
        private string connectionString = @"Server=SUMON\SQLEXPRESS;Database=Project;Integrated Security=true";
        public List<ViewCityEntryWithCountry> GetAllCityEntrywithCountry()
        {
            List<ViewCityEntryWithCountry> aListOfCity = new List<ViewCityEntryWithCountry>();
            string query = "select c.Id CityId,c.CityName NameCity,c.NoOfDwellers Dwellers ,co.CountryName NameCountry  from Citys c join Countrys co on c.CountryId=co.Id ";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                ViewCityEntryWithCountry city = new ViewCityEntryWithCountry();
                city.Id = Convert.ToInt32(reader["CityId"]);
                city.CityName = reader["NameCity"].ToString();

                city.NoOfDwellers = Convert.ToInt32(reader["Dwellers"]);
                city.CountryName = reader["NameCountry"].ToString();
               
               

                aListOfCity.Add(city);
            }
            return aListOfCity;
        }


    }
}