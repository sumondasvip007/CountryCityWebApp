using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityWebProject.DAL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.BLL
{
    public class ViewCityManager
    {
        ViewCityGateway aCityGateway = new ViewCityGateway();
      

        public List<ViewCitiesViewModel> ShowAllCityAndCountry()
        {
            return aCityGateway.ShowAllCityAndCountry();
        }

        public List<ViewCitiesViewModel> SeacrhResultForCountryInViewCity(string searchItem)
        {
            return aCityGateway.SeacrhResultForCountryInViewCity(searchItem);
        }

        public List<ViewCitiesViewModel> SeacrhResultForCityInViewCity(string searchItem)
        {
            return aCityGateway.SeacrhResultForCityInViewCity(searchItem);
        }
    }
}