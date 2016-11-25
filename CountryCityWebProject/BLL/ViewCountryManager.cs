using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CountryCityWebProject.DAL;
using CountryCityWebProject.MODEL;

namespace CountryCityWebProject.BLL
{
    public class ViewCountryManager
    {
        ViewCountryGateway aViewCountryGateway=new ViewCountryGateway();



        public List<ViewCountryModel> AllCountryLoodInGriddView(List<Country> listOfCountries)
        {
            return aViewCountryGateway.AllCountryLoodInGriddView(listOfCountries);
        }

        public List<ViewCountryModel> SearchCountryLoodInGridView(string searchItem)
        {
            return aViewCountryGateway.SearchCountryLoodInGridView(searchItem);
        }
    }
}