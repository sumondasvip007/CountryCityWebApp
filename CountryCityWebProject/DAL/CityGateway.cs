using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.DAL
{
    public class CityGateway
    {

        private string connectionString = @"Server=SUMON\SQLEXPRESS;Database=Project;Integrated Security=true";

        public int InsertCity(City aCity)
        {
            string query = "INSERT INTO Citys VALUES(@nameCity,@aboutCity,@noOfDwellers,@location,@weather,@countryId)";
            SqlConnection aConnection = new SqlConnection(connectionString);
            aConnection.Open();
            SqlCommand aCommand = new SqlCommand(query, aConnection);
            aCommand.Parameters.Clear();
            aCommand.Parameters.Add("nameCity", SqlDbType.VarChar);
            aCommand.Parameters["nameCity"].Value = aCity.Name;
            aCommand.Parameters.Add("aboutCity", SqlDbType.VarChar);
            aCommand.Parameters["aboutCity"].Value = aCity.About;
            aCommand.Parameters.Add("noOfDwellers", SqlDbType.Int);
            aCommand.Parameters["noOfDwellers"].Value = aCity.NoOfDwellers;
            aCommand.Parameters.Add("location", SqlDbType.VarChar);
            aCommand.Parameters["location"].Value = aCity.Location;
            aCommand.Parameters.Add("weather", SqlDbType.VarChar);
            aCommand.Parameters["weather"].Value = aCity.Weather;
            aCommand.Parameters.Add("countryId", SqlDbType.Int);
            aCommand.Parameters["countryId"].Value = aCity.CountryId;
            aCommand.CommandText = query;
            aCommand.Connection = aConnection;
            int rowAffected = aCommand.ExecuteNonQuery();
            aConnection.Close();

            return rowAffected;



        }

        public bool IsNameExists(string name)
        {
            bool isnameExist = false;
            string query = "SELECT * FROM Citys WHERE CityName='" + name + "' ";

            SqlConnection aConnection = new SqlConnection(connectionString);
            aConnection.Open();
            SqlCommand aCommand = new SqlCommand(query, aConnection);

            SqlDataReader reader = aCommand.ExecuteReader();


            if (reader.Read())
            {
                isnameExist = true;
            }


            return isnameExist;

        }

     

        public List<Country> GetAllCountry()
        {
            SqlConnection aConnection = new SqlConnection(connectionString);
            string query = "select * from Countrys";

            SqlCommand command = new SqlCommand(query, aConnection);
            aConnection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<Country> countries = new List<Country>();
            while (reader.Read())
            {
                Country aCountry= new Country();
                aCountry.Id= Convert.ToInt32(reader["Id"].ToString());
                aCountry.Name = reader["CountryName"].ToString();

                countries.Add(aCountry);




            }

            reader.Close();
            aConnection.Close();
            return countries;

        } 
    }
}