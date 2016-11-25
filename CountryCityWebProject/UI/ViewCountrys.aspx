<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountrys.aspx.cs" Inherits="CountryCityWebProject.UI.ViewCountrys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" GroupingText="Search Criteria" Height="90px" Width="571px">
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="countryNameTextBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
             
        </asp:Panel>
        <br />
        <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" />
        <br />
        <br />
        <asp:GridView ID="viewCountryGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="3" OnPageIndexChanging="viewCountryGridView_PageIndexChanging" >
            <Columns>
                <asp:TemplateField HeaderText="SL#">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="NameCountry" HeaderText="Name" />
                <asp:BoundField DataField="AboutCountry" HeaderText="About" HtmlEncode="False" />
                <asp:BoundField DataField="NoOfCitys" HeaderText="No.of cities" />
                <asp:BoundField DataField="NoOfDwellers" HeaderText="No. of city Dwellers" />
               

            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
