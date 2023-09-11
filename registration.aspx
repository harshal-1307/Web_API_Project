<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="WebApplication5.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        .view{
            width: 500px;
            height: 500px;
            border: 1px solid red;
            margin-left: 100px;
            box-shadow:-2px 2px 8px 2px darkorange;
        }
        .view1{
            width:800px;
            height: 500px;
            margin-top:-500px;
            margin-right:110px;
            float:right;
            background-image:url("images/images4.jpg");
            background-repeat:no-repeat;
            background-size:cover;
        }
        body{
            background-color:antiquewhite;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <p style="margin-top:100px;margin-left:100px;word-spacing:5px; color:black">GET  FASTEST  DELIVERY </p>

        <div class="view">
            <table style="padding-top: 30px; background-color:white;height:-webkit-fill-available;width:-webkit-fill-available">
                <tr>
                    <td>
                        <p style="margin-left: 150px;font-size: 25px;font-family: math;text-decoration: underline;">Registration Page</p>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address " CssClass="form-control"  style=" height: 30px;padding:5px; border:1px solid #ccc;width: 400px;margin-left: 40px;" AutoCompleteType="Disabled" ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter your password " CssClass="form-control" style="height: 30px; padding:5px;  border:1px solid #ccc ; width: 400px;margin-left: 40px;margin-top:15px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" placeholder="Enter your username " CssClass="form-control" style="height: 30px; padding:5px;  border:1px solid #ccc ; width: 400px;margin-left: 40px;margin-top:15px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtmobile_no" runat="server" placeholder="Enter your mobile number" CssClass="form-control" style="height: 30px; padding:5px;  border:1px solid #ccc ; width: 400px;margin-left: 40px;margin-top:15px" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" style="margin-top: 15px;margin-left: 40px;width: 200px;height:40px;font-size:15px ;background-color:#ffa500ab ; border:none" class="btn btn-block" Text="Register" 
                        OnClick="btnRegister_Click" CausesValidation="false" />
                    </td>
                     <td>
                        <asp:Button ID="btnLogin" runat="server" style="margin-top: 15px;margin-left:-240px;width: 200px;height: 40px;font-size:15px ;background-color:#ffa500ab ; border:none" class="btn btn-block" Text="Login Page" 
                        OnClick="btnLogin_Click" CausesValidation="false" />
                    </td>
                </tr>

                <tr>
                    <td><p style="margin-left:40px">Connect with us</p></td>
                    <td>
                        <img src="images/google_icon.jpg" style="width: 40px;margin-left:-300px;"/>
                    </td>
                    <td>
                        <img src="images/instagram_icon.jpg" style="width: 40px;margin-left: -260px;"/>
                    </td>
                    <td>
                        <img src="images/facebook_icon.jpg" style="width: 40px;margin-left: -220px;"/>
                    </td>
                    
                </tr>
            </table>
               
        </div>

        <div class="view1">

        </div>
       
        <p style="float:right;margin-right:100px;word-spacing:5px;color:black">OREDER AND GET FOOD ON TABLE </p>

    </form>
</body>
</html>
