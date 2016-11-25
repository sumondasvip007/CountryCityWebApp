using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityWebProject.MODEL
{
    public class ViewCountryModel
    {
        public int Id { set; get; }
        public string NameCountry { set; get; }
        public string AboutCountry { set; get; }
        public int NoOfCitys { set; get; }
        public int NoOfDwellers { set; get; }

        public ViewCountryModel( string nameCountry, string aboutCountry, int noOfCitys, int noOfDwellers)
        {
           
            NameCountry = nameCountry;
            AboutCountry = aboutCountry;
            NoOfCitys = noOfCitys;
            NoOfDwellers = noOfDwellers;
        }

        public ViewCountryModel()
        {
            
        }
    }



}