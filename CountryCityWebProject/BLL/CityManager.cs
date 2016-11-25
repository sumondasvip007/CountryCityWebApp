using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityWebProject.DAL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.BLL
{
    public class CityManager
    {
        CityGateway aGateway = new CityGateway();

        public string Save(City aCity)
        {
            bool isnameExist = aGateway.IsNameExists(aCity.Name);

            string message = "";
            if (isnameExist)
            {
                message = "City Name already exist...";


            }

            else
            {

                int rowAffected = aGateway.InsertCity(aCity);
                if (rowAffected > 0)
                {
                    message = "City save succssfully";
                }
                else
                {
                    message = "City not saved";
                }

            }
            return message;


        }

        

        public List<Country> GetAllCountrys()
        {
            return aGateway.GetAllCountry();
        }

    }
}