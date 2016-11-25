<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCities.aspx.cs" Inherits="CountryCityWebProject.UI.ViewCities" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title of the document</title>
</head>

<body>

    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" GroupingText="Search Criteria" Height="136px" Width="571px">
            <asp:RadioButton ID="cityNameRadioButton" runat="server" Text="City Name" GroupName="SearchGroup" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="cityNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButton ID="countryNameRadioButton" runat="server" Text="Country Name" GroupName="SearchGroup" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="countryNameDropDownList" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
        </asp:Panel>
        <br/>
        <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" />
        <br />
        <br />
        <asp:GridView ID="viewCityGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" OnPageIndexChanging="viewCityGridView_PageIndexChanging" >
            <Columns>
                <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CityName" HeaderText="City Name" />
                <asp:BoundField DataField="AboutCity" HeaderText="About City" HtmlEncode="False" />
                <asp:BoundField DataField="NoOfDwellers" HeaderText="No.of Dwellors" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:BoundField DataField="Weather" HeaderText="Weather" />
                <asp:BoundField DataField="CountryName" HeaderText="Country Name" />
                <asp:BoundField DataField="AboutCountry" HeaderText="About Country" HtmlEncode="False" />

            </Columns>
        </asp:GridView>

    </form>

</body>

</html>

