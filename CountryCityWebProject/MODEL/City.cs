using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityWebProject.MODEL
{
    public class City
    {
        public int Id { set; get; }
        public string Name { set; get; }
        public string About { set; get; }
        public int NoOfDwellers { set; get; }
        public string Location { set; get; }
        public string Weather { set; get; }
        public int CountryId { set; get; }
    }
}