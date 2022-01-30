<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="bookstoreonline.forget" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 189px;
            background-color: #CCFF99;
        }
        .auto-style3 {
            width: 284px;
        }
        .auto-style4 {
            width: 284px;
            text-align: center;
            height: 97px;
        }
        .auto-style5 {
            margin-left: 11px;
            margin-top: 0px;
        }
        .auto-style6 {
            height: 97px;
        }
        .auto-style7 {
            background-color: #00FF00;
        }
        .auto-style8 {
            width: 101%;
            height: 183px;
            background-color: #CCFF99;
        }
        .auto-style9 {
            height: 97px;
            width: 792px;
        }
        .auto-style10 {
            text-align: center;
            width: 792px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="ONLINE BOOK STORE"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="WELCOME TO THE BEST BOOK STORE..."></asp:Label>
            <br />
            <br />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="194px" Width="820px">
            <table class="auto-style2" border="1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#006600" Text="ENTER USERNAME"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="51px" Width="498px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#006600" Text="ENTER MOBILE NUMBER"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style5" Height="51px" Width="498px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="#006600" Height="51px" OnClick="Button1_Click1" Text="VERIFY" Width="225px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="174px" Visible="False" Width="821px">
            <table border="1" class="auto-style8">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#006600" Text="ENTER NEW PASSWORD"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5" Height="51px" Width="498px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style10">
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="#006600" Height="51px" Text="SAVE" Width="225px" OnClick="Button2_Click1" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
            &nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/home.aspx" Visible="False">LOGIN NOW</asp:HyperLink>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
