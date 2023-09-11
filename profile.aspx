<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebApplication5.profile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>

    <style>
        .box{
            width:500px;
            height:480px;
            border:1px solid red;
            background-color:aquamarine;
            margin-left:500px;
            margin-top:100px;
            border-radius:20px 20px;
            box-shadow: 5px 6px 5px 5px grey;
        }

        .box1{
            width:500px;
            height:160px;
            border:1px solid red;
            border-radius:20px 20px;
            padding-top:20px;
        }

        .box2{
            width: 500px;
            height: 300px;
            border: 1px solid black;
            border-radius: 20px 20px;
        }
        body{
            background-color:transparent;
        }
        
        .box3{
             width: 490px;
            height: 48px;
            background-color: mediumaquamarine;
            border-radius: 10px 10px;
            margin-top: 3px;
            margin-left: 3px;
            padding-top: 3px;
        }

        
        .box4{
             width: 120px;
            height: 34px;
            background-color: lightseagreen;
            border-radius: 10px 10px;
            margin-left: 5px;
            text-align: center;
            padding-top: 10px;
            font-size: 18px;
            color: white;
        }
         
        .box5{
             width: auto;
            height: 33px;
            background-color: darkcyan;
            border-radius: 10px 10px;
            margin-left: 126px;
            margin-top: -45px;
            padding-top: 10px;
            padding-left: 10px;
            font-size: 17px;
            color: white;
        }

        button{
         width: 150px;
        height: 50px;
        background-color: darkcyan;
        border: 1px solid red;
        margin-left: 180px;
        border-radius: 20px 20px;
        font-size: 20px;
        color: white;
        margin-top:8px;
        }
    </style>
    <script>
        var i = 0;
        function buttonClick() {
            document.getElementById('inc').value = ++i;
        }
    </script>
   
</head>

<body>
         
    

        <button onclick="buttonClick()">Click Me</button>
        <input type="text" id="inc" value="0"/>

    <form id="form1" runat="server">

         <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
               
         <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control"></asp:TextBox>
               
        <asp:Button ID="btnLogin" runat="server" class="btn btn-block" Text="login" OnClick="btnLogin_Click"
            OnClientClick="return raiseEvent('loginFrm');" data-parsley-group="first" data-loading-text="Loading"
            ValidationGroup="loginFrm" CausesValidation="false" />

        
    <asp:HiddenField ID="hiddenValue" runat="server" />

        <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <!-- Add other headers here -->
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptProducts" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("email") %></td>
                                <td><%# Eval("password") %></td>
                                <!-- Add other columns here -->
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>

        <div class="box">

            <div class=" box1">

                <svg xmlns="http://www.w3.org/2000/svg" width="150" height="150" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16" style="margin-left:180px">
                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                  <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
                </svg>
            </div>

            <div class=" box2">

                <table>
                    
                    <tr>
                        <td>
                            <div class="box3">
                                <div class="box4">Name :</div>

                                <div class="box5"> 

                                    <p id="UserName"></p>

                                </div>

                            </div>

                        </td>
                        

                    </tr>
                     <tr>
                        <td>
                            <div class="box3">
                                 <div class="box4">Email :</div>
                                <div class="box5">
                                    <p id="UserEmail"></p>
                                </div>
                            </div>

                        </td>

                    </tr> 
                   
                    <tr>
                        <td>
                            <div class="box3">
                                    <div class="box4">Addresss :</div>
                                <div class="box5"></div>
                            </div>

                        </td>

                    </tr> 

                    <tr>
                        <td>
                            <div class="box3">
                                    <p style="text-align: center;font-size: 18px;margin-top: 10px;">User Profile</p>
                            </div>

                        </td>

                    </tr>

                    <tr>
                        <td>
                            <button>cancel</button>

                        </td>

                    </tr>

                </table>

            </div>

        </div>

    </form>
</body>
</html>
