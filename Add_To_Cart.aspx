<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_To_Cart.aspx.cs" Inherits="WebApplication5.Add_To_Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .table_view{
            width: inherit;
            height: fit-content;
            border: 1px solid red;
        }
        .table_view_content{
            width: inherit;
            height: fit-content;
            border: 1px solid red;
            margin-top:20px;
        }
    </style>
</head>
<body>
    <div class="table_view">

        <form id="form1" runat="server">
            <div>
                 <table>
                        <tr>
                            <td>
                                <p style="margin-left:20px">Name</p>
                            </td>
                            <td>
                                <p style="margin-left: 90px">Value</p>
                            </td>
                            <td>
                                <p style="margin-left: 160px;">Desc</p>
                            </td>
                        </tr>
                    <tbody>
                        <asp:Repeater ID="rptProducts" runat="server">
                            <ItemTemplate>
                                <tr style="background-color: darkorange">
                                    <td style="height: 40px;padding: 10px; width:200px"><%# Eval("Name") %></td>
                                    <td style="padding: 10px;width: 270px;"><%# Eval("Value") %></td>
                                    <td style="padding: 10px;width:430px"> <%# Eval("Desc") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            
                <asp:Button ID="btnGetOrderData" runat="server"  OnClick="btnGetOrderData_Click"/>


            </div>

        </form>
     </div>
</body>
</html>
