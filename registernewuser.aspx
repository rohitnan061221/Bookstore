<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registernewuser.aspx.cs" Inherits="bookstoreonline.registernewuser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 76%;
            height: 279px;
            background-color: #FF99FF;
        }
        .auto-style2 {
            height: 100px;
            width: 696px;
        }
        .auto-style3 {
            width: 154px;
        }
        .auto-style4 {
            height: 100px;
            width: 154px;
        }
        .auto-style5 {
            width: 696px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="ONLINE BOOK CENTER"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="WELCOME TO THE BEST BOOK STORE"></asp:Label>
            <br />
            <br />
            LOGIN TO CONTINUE SHOPPING...<br />
            <br />
            <br />
        </div>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">USERNAME</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="585px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PASSWORD</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="55px" TextMode="Password" Width="585px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" BackColor="Red" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF66CC" Height="58px" OnClick="Button1_Click" Text="LOGIN" Width="228px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" NavigateUrl="~/forget.aspx">FORGET PASSWORD</asp:HyperLink>
    </form>
</body>
</html>
