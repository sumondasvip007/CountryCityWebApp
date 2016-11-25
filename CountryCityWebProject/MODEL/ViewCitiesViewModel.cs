using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityWebProject.MODEL
{
    public class ViewCitiesViewModel
    {

        public int Id { get; set; }
        public string CityName { get; set; }
        public string AboutCity { get; set; }
        public int NoOfDwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public string CountryName { get; set; }
        public string AboutCountry { get; set; }

        public ViewCitiesViewModel()
        {

        }

        public ViewCitiesViewModel(int id, string cityName, string aboutCity, int noOfDwellers, string location, string weather, string countryName, string aboutCountry)
        {
            Id = id;
            CityName = cityName;
            AboutCity = aboutCity;
            NoOfDwellers = noOfDwellers;
            Location = location;
            Weather = weather;
            CountryName = countryName;
            AboutCountry = aboutCountry;
        }
    }
}