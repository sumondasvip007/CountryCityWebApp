using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityWebProject.DAL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.BLL
{
    public class ViewCityEntryWithCountryManager
    {
        private ViewCityEntryWithCountryGateway aGateway = new ViewCityEntryWithCountryGateway();

        public List<ViewCityEntryWithCountry> GetAllCityWithCountry()
        {
            return aGateway.GetAllCityEntrywithCountry();
        }
    }
}