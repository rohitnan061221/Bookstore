<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="bookstoreonline.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #33CCFF;
        }
        .auto-style4 {
            width: 421px;
            height: 73px;
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            width: 293px;
        }
        .auto-style10 {
            text-align: center;
            width: 293px;
            height: 73px;
        }
        .auto-style12 {
            text-align: center;
            width: 366px;
            height: 73px;
        }
        .auto-style13 {
            width: 366px;
            text-align: center;
        }
        .auto-style14 {
            text-align: center;
            width: 421px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
            background-color: #FF99FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style15">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="ONLINE BOOK STORE"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="WELCOME TO THE BEST BOOK STORE..."></asp:Label>
            <br />
            <br />
        </div>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style13">
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#33CCFF" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#003366" OnClick="LinkButton1_Click">PRODUCTS</asp:LinkButton>
                </td>
                <td class="auto-style14">
                    <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#33CCFF" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#003366" OnClick="LinkButton2_Click">CONTACT US</asp:LinkButton>
                </td>
                <td class="auto-style9">
                    <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#33CCFF" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="#003366" OnClick="LinkButton3_Click">ABOUT US</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="DATE" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Label"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style10">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" OnClick="LinkButton4_Click">LOGIN</asp:LinkButton>
                </td>
            </tr>
        </table>
        <p class="auto-style16">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660033" Text="Label"></asp:Label>
        </p>
        <p class="auto-style15">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="Red" Text="Where books &amp; people meet."></asp:Label>
        </p>
    </form>
</body>
</html>
