﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_page.aspx.cs" Inherits="WebApplication5.Login_page" %>

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
            background-color:white;
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
            <table style=" width:-webkit-fill-available;height:315px;margin-top:80px">
                <tr>
                    <td>
                        <p style="text-align:center;text-decoration:underline; font-size:25px">Login Page</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email address " CssClass="form-control"  style=" height: 35px;padding:5px; border:1px solid #ccc;width: 400px;margin-left: 40px;margin-bottom:10px" AutoCompleteType="Disabled" ></asp:TextBox>
                        
                    </td>
                </tr>
                <tr>
                   <td>
                        <asp:TextBox ID="txtpassword" runat="server" placeholder="Enter your email address " CssClass="form-control"  style="margin-bottom:10px; height: 35px;padding:5px; border:1px solid #ccc;width: 400px;margin-left: 40px;" AutoCompleteType="Disabled" ></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:CheckBox runat="server" ID="remember_me" Text="remember me !" style="margin-top:10px;margin-bottom:10px;margin-left: 40px;"/> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <a href="WebForm1.aspx" style="margin-left:40px">forget password</a>
                    </td>
                </tr>

                <tr>
                     <td >
                        <asp:Button ID="btnLogin" runat="server" style="margin-top: 15px;margin-left: 40px;width: 200px;height:40px;font-size:15px ;background-color:#ffa500ab ; border:none" class="btn btn-block" Text="Login" 
                        OnClick="btnLogin_Click" CausesValidation="false" />

                         <asp:Button ID="btnRegister" runat="server" style="margin-top: 15px;margin-left:0px;width: 200px;height: 40px;font-size:15px ;background-color:#ffa500ab ; border:none" class="btn btn-block" Text="Registration page" 
                        OnClick="btnRegister_Click" CausesValidation="false" />
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
