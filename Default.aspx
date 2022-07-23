<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 347px;
        }
        .style3
        {
            width: 192px;
        }
        .style4
        {
            width: 270px;
        }
        .style5
        {
            width: 323px;
        }
        .style15
        {
            width: 610px;
        }
        .style16
        {
            width: 610px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                    </td>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Productid"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="style16" rowspan="4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="10" DataSourceID="SqlDataSource1" 
                        Height="660px" AutoGenerateColumns="False" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="600px">
                        <Columns>
                            <asp:BoundField DataField="Productid" HeaderText="Productid" 
                                SortExpression="Productid" />
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                SortExpression="ProductName" />
                            <asp:BoundField DataField="Categoryid" HeaderText="Categoryid" 
                                SortExpression="Categoryid" />
                            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" 
                                SortExpression="CategoryName" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="ProductName"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                        style="margin-bottom: 2px"></asp:TextBox>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    </td>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Categoryid"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    </td>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Catorgyname"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Insert" 
                        Width="149px" />
                </td>
                <td class="style5">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Clear" 
                        Width="143px" />
                </td>
                <td class="style15">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM [Table1] ORDER BY [Productid]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
