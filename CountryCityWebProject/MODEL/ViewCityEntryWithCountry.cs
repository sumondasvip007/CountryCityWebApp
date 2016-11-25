using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityWebProject.MODEL
{
    public class ViewCityEntryWithCountry
    {
        public int Id { set; get; }
        public string CityName { set; get; }

        public int NoOfDwellers { set; get; }

        public string CountryName { set; get; }
    }
}