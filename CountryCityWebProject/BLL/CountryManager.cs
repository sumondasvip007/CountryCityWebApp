using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityWebProject.DAL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.BLL
{
    public class CountryManager
    {
        CountryGateway aGateway = new CountryGateway();

        public string Save(Country aCountry)
        {
            bool isnameExist = aGateway.IsNameExists(aCountry.Name);

            string message = "";
            if (isnameExist)
            {
                message = "Country Name already exist...";


            }

            else
            {

                int rowAffected = aGateway.InsertCountry(aCountry);
                if (rowAffected > 0)
                {
                    message = "Country save succssfully";
                }
                else
                {
                    message = "Country not saved";
                }

            }
            return message;


        }

        public List<Country> GetAllCountry()
        {
            return aGateway.GetAllCountry();
        }

    }
}