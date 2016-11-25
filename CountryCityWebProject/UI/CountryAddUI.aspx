<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryAddUI.aspx.cs" Inherits="CountryCityWebProject.UI.index" ValidateRequest="false" %>

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

            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<input type="text" id="nameTextBox" name="nameTextBox" runat="server"/>
            <br />
            <br />
            <textarea id="edit" name="edit" runat="server"></textarea><br />
            <br />
&nbsp;<asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" style="margin-left: 0px" Width="52px" />
            <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" Width="56px" />
       
            <br />
       
        <asp:Label ID="messageLabel" runat="server" Text=""></asp:Label>
        

    
            <br />
        

    
    <asp:GridView ID="showGridView" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="id" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="About" HeaderText="About" HtmlEncode="False" />
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
            $('#edit').editable({ inlineMode: false,height:300, alwaysBlank: true })
        });
  </script>


</body>

</html>
