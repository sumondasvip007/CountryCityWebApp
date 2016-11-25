<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CountryCityWebProject.UI.HomePage" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
    <link href="HomePageStyle.css" rel="stylesheet" />
</head>

<body>
<div  class="Main" runat="server">
   
    <div  class="Header" runat="server">
   <center><h1 style="padding-top:20px">CODER GROUP</h1></center> 
</div>
    <div  class="menu" runat="server">
    <ul>
        <li><a href="HomePage.aspx">Home</a></li>
        <li><a href="CountryAddUI.aspx">Add Country</a></li>
        <li><a href="CityAddUI.aspx">Add City</a></li>
        <li><a href="ViewCountrys.aspx">View Countey</a></li>
        <li><a href="ViewCities.aspx">View City</a></li>
    </ul>
</div>
    <div  class="Content" runat="server">
        <h2>Country Information</h2>
        <p>We can save Country Name  and About Country from this website. We can see the Country Name, About Country in Gried View.
            We also see the number of cities and no of dwellers under a country</p>
       <h2>City Information</h2>
        <p> We can save city Name, About City, No of dwellers, weather, location from this site. And see City Name, About City,
             No of dwellers, weather, location in a Grid View. We also see Country name of the City in City view.</p>
</div>
    
    <div  class="Footer" runat="server">
    <center><p style="padding-top: 8px;color: white;">&copy;CODER GROUP</p></center>
</div> 
</div>
</body>

</html>
