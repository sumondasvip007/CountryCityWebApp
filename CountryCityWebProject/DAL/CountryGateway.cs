using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.DAL
{
    public class CountryGateway
    {
        private string connectionString = @"Server=SUMON\SQLEXPRESS;Database=Project;Integrated Security=true";

        public int InsertCountry(Country aCountry)
        {
            string query = "INSERT INTO Countrys VALUES(@name,@about)";
            SqlConnection aConnection = new SqlConnection(connectionString);
            aConnection.Open();
            SqlCommand aCommand = new SqlCommand(query, aConnection);
            aCommand.Parameters.Clear();
            aCommand.Parameters.Add("name", SqlDbType.VarChar);
            aCommand.Parameters["name"].Value = aCountry.Name;
            aCommand.Parameters.Add("about", SqlDbType.VarChar);
            aCommand.Parameters["about"].Value = aCountry.About;
            aCommand.CommandText = query;
            aCommand.Connection = aConnection;
            int rowAffected = aCommand.ExecuteNonQuery();
            aConnection.Close();

            return rowAffected;



        }

        public bool IsNameExists(string name)
        {
            bool isnameExist = false;
            string query = "SELECT * FROM Countrys WHERE CountryName='" + name + "' ";

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
            List<Country> aListOfCity = new List<Country>();
            string query = "SELECT * FROM Countrys ";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {   Country country=new Country();
                country.Id = Convert.ToInt32(reader["Id"]);
                country.Name = reader["CountryName"].ToString();
                country.About = reader["AboutCountry"].ToString();
                
                
                aListOfCity.Add(country);
            }
            return aListOfCity;
        }


    }
}
