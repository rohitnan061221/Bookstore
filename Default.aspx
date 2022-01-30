<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="bookstoreonline.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 254px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="ONLINE BOOK STORE"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Text="Welcome to the best book store"></asp:Label>
            <br />
            <br />
            YOUR PRODUCTS IN YOUR CART
            <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx">SHOW CART</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" OnClick="LinkButton2_Click">SIGNOUT</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" GridLines="Both" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" Width="821px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <table border="1" class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Product id"></asp:Label>
                                &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("productid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("productimage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                                &nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Quantity
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="40px" ImageUrl="~/images/addtocart.png" Width="181px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
