<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CityAddUI.aspx.cs" Inherits="CountryCityWebProject.UI.CityAddUI" ValidateRequest="false" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title of the document</title>
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_editor.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_style.css" rel="stylesheet" />
    <link href="../Content/Style.css" rel="stylesheet" />
</head>

<body>
    <section>
        <form runat="server">
            
            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<input type="text" id="nameCityTextBox" name="nameCityTextBox" runat="server"/><br />
            <br/>
            <textarea id="edit" name="edit" runat="server"></textarea>
            <table>
             <tr>
                 <td>No of Dwellers</td>
                 <td>:<input type="text" id="noOfDwellersTextBox" name="noOfDwellersTextBox" runat="server"/></td><br/>
             </tr> 
                
                 <tr>
                 <td>Location</td>
                 <td>:<input type="text" id="locationTextBox" name="locationTextBox" runat="server"/></td><br/>
             </tr> 
                
                 <tr>
                 <td>Weather</td>
                 <td>:<input type="text" id="weatherTextBox" name="weatherTextBox" runat="server"/></td><br/>
             </tr> 
                
                 <tr>
                 <td> Country</td>
                 <td>:<asp:DropDownList ID="countryDropDownList" runat="server"></asp:DropDownList></td>
                  <td><asp:Button ID="saveCityButton" runat="server" Text="Save" OnClick="saveCityButton_Click" style="margin-left: 0px" /></td>
                 <td><asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" /></td>
             </tr>
            <br/>
            </table>
            <br/>
            <asp:Label ID="messageCityLabel" runat="server" Text=""></asp:Label>
        <br/>
            
            <br/>
            <br/>

            <asp:GridView ID="showCityGridView" runat="server"  AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="SL#" />
                    <asp:BoundField DataField="CityName" HeaderText="Name" />
                    <asp:BoundField DataField="NoOfDwellers" HeaderText="No. of dwellers" />
                    <asp:BoundField DataField="CountryName" HeaderText="Country" />
                </Columns>
            </asp:GridView>
    
     </form>
        </section>

    <script src="../Scripts/jquery-2.2.2.js"></script>
    <script src="../froala_editor_1.2.7/js/froala_editor.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/tables.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/lists.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/colors.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/media_manager.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/block_styles.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/video.min.js"></script>

    <script>
        $(function () {
            $('#edit').editable({ inlineMode: false, height: 300, alwaysBlank: true })
        });
  </script>


</body>

</html>

