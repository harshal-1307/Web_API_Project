<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        .headr {
            width: 100%;
            height: 50px;
            background-color: orange;
        }

        .h_btn {
            width: 80px;
            height: 34px;
            font-size: 18px;
            padding-top: 15px;
            text-align: center;
            margin-left: 15px;
            color: white;
            margin-top:-7px;
        }

        .h_btn:hover{
            background-color:blanchedalmond;
            color:black;
            box-shadow:5px 5px 20px 5px orange;
        }
        
        .login{
            width: 80px;
            height: 34px;
            font-size: 18px;
            padding-top: 15px;
            text-align: center;
            margin-left: 15px;
            color: white;
            margin-top:-7px;
        }

        .login:hover{
            background-color:blanchedalmond;
            color:black;
            box-shadow:5px 5px 20px 5px orange;
        }

        .ATC_btn {
            font-size: 18px;
            background-color: orange;
            padding-top: 13px;
            text-align: center;
            color: white;
            border-radius: 6px;
        }
        .ATC_btn:hover{
            width:initial;
            height:40px;
            box-shadow:8px 5px 50px 5px orange;
        }

        .circle {
            padding: 10px;
            text-align: center;
            background-color: blanchedalmond;
            color: white;
            border-radius: 50% 50%;
            margin-top:-4px;
            width: 28px;
            height: 28px;
            margin-left: 640px;
        }

        img {
            width: 100%;
            height: 85%;
            border-radius: 25px;
            box-shadow: 10px 8px 11px darkslategray;
        }

        .popup_box{
            width:450px;
            height:250px;
            margin-left:500px;
            margin-top:-300px;
            background-color:navajowhite;
        }

        .body_btn {
            width: fit-content;
            height: fit-content;
            margin-top: -5px;
        }

        .body_box {
            width: 50%;
            height: fit-content;
            border: 1px solid red;
            margin-top: -5px;
        }

        .booksData {
            width: 370px;
            height: 410px; 
            margin-left: 60px;
            margin-top:10px;
        }

        .booksData_box{
            width:370px;
            height:35px;
            margin-top:50px;
            font-size:25px;
            padding-top:12px;
            text-align:center;
            color:white;
            background-color:darkorange; 
            border-radius:20px 20px;
            
        }

        .images {
            background-image: url("images/New_images7.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position:center;
        }

        #panel {
            position: absolute;
            width: 180px;
            height: 140px;
            background-color: orange;
            margin-top:10px;
            margin-left: -92px;
            display:none;
        }

        .panel1 {
            height:50px;
        }
        
        a {
            text-decoration: none;
            color: white;
            margin-left: 5px;
        }
        a:hover{
            color:black;
        }

        .second_box {
            height: 350px;
        }

        .third_box {
            width: 200px;
            height: 40px;
            background-color: orange;
            margin-top: 10px;
            color: white;
            border-radius: 10px;
            text-align: center;
            font-size: 19px;
            padding-top: 18px;
            margin-left:70px;
        }

        .fourth_box {
            width: 120px;
            height: 18px;
            background-color: blanchedalmond;
            padding: 14px;
            text-align: center;
            font-size: 17px;
            border-radius: 10px;
        }

        .food_box {
            width:185px;
            height:160px;
            margin-top:15px;
            margin-left:-35px;
            background-color:orange;
            border-radius:10px 10px;
        }
        .food_box_row{
            width:185px;
            height:30px;
            margin-top:1px;
            background-color:orange;
            border-radius:10px 10px;
            border-bottom:4px solid darkorange;
            padding-top:10px;
            color:white;    
        }
        .food_box_row:hover{
            color:black;
            background-color:blanchedalmond;
        }

        .event_box{
            width:initial;
            height:570px;
            margin-top:200px;
            margin-left:150px;
            margin-right:150px;
            border-radius:20px 100px;
            border:1px solid black;
            background-color:blanchedalmond;
        }

        .food_event{
            width:270px;
            height:40px;
            text-align:center;
            padding-top:20px;
            font-size:23px;
            color:white;
            background-color:orange;
           
        }
        .food_event_box{
            width:170px;
            height:100px;
            box-shadow:10px 13px 10px grey;
            border-radius:10px 10px;
        }
        footer{
            width:initial;
            height:250px;
            margin-top:20px;
            padding:8px;
            box-shadow:5px 5px 10px 10px grey; 
            background-color:blanchedalmond;
        }
        .footer_icon_play_store{
            width:170px;
            height:60px;
            padding:5px;
            float:right;
            border-radius:10px 10px;
            font-size:18px;
            margin-right:100px;
            margin-top:-180px;
            background-color:orange;
        }
        .footer_icon_app_store{
            width:170px;
            height:60px;
            padding:5px;
            float:right;
            border-radius:10px 10px;
            font-size:18px;
            margin-right:100px;
            margin-top:-80px;
            background-color:orange;
        }
       
    </style>


    <script>

        function myFunction() {
            //document.getElementById("panel").style.display = "block";

            var x = document.getElementById("panel");
            if (x.style.display === "none") {
                x.style.display = "block";
            }
            else {
                x.style.display = "none";
            }
        }

        function myFunction1() {
            //document.getElementById("panel").style.display = "block";

            var x1 = document.getElementById("food_box");
            if (x1.style.display === "none") {
                x1.style.display = "block";
            }
            else {
                x.style.display = "none";
            }
        }

        //var i = 0;

        //document.getElementById("btnADC").onclick = Function(){
        //    document.getElementById('inc').value = ++i;
        //}

    </script>
</head>
<body>

    <form id="Home" runat="server">

    <asp:Label ID="session" runat="server"></asp:Label>
    
        <div class="headr">

            <table>
                <tr>
                    <td>
                        <p style="margin-left: 15px; margin-right: 15px;">Online Food Store</p>
                    </td>

                    <td>
                        <div class="h_btn">home</div>
                    </td>

                    <td>
                        <div class="h_btn">Events</div>
                    </td>

                    <td>
                        <div class="h_btn" style="width: 110px">Order history</div>
                    </td>

                    <td>
                        <div class="h_btn" style="width: 100px">Contact us</div>
                    </td>

                     <td>
                        <div class="login" style="width: 100px"><a href="Login_page.aspx">login</a></div>
                    </td>
                    
                    <td>
                        <a href="Add_To_Cart.aspx" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="red" style="margin-left:10px" class="bi bi-bag" viewBox="0 0 16 16">
                                <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
                            </svg>
                        </a>
                    </td>

                    <td>
                        <div class="circle" onclick="myFunction()">

                            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="black " class="bi bi-person" viewBox="0 0 16 16">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                            </svg>

                            <div id="panel">

                                <div class="panel1">

                                    <asp:Button ID="Button1" runat="server" style="height:50px;background-color:blanchedalmond;width:-webkit-fill-available ; font-size:16px; border:none;border-bottom:2px solid darkred" Text="profile"> </asp:Button >

                                </div>

                                <div class="panel1">
                                   
                                    <asp:Button ID="Button2" runat="server" style="height:50px;background-color:blanchedalmond;width:-webkit-fill-available ;font-size:16px ;border:none;border-bottom:2px solid darkred" Text="settings"> </asp:Button >
                                </div>

                                <div class="panel1">
                                    <asp:Button ID="btnLogout" runat="server"  style="height:50px;background-color:blanchedalmond;width:-webkit-fill-available ; font-size:16px; border:none;border-bottom:2px solid darkred" Text="logout" 
                                    OnClick="btnLogout_Click" CausesValidation="false" />
                                </div>

                            </div>

                        </div>



                    </td>
                </tr>

            </table>


            <div class="images">

                <table style="width: 100%;height: 600px;">
                    <tr>

                        <td>
                           <div class="booksData_box" style="margin-left:60px">sweet</div>
                                <div class="booksData">
                                    <img src="images/New_images4.jpg" />
                                    <table style="width: 295px; border: 1px solid red; margin-top: 6px;margin-left:15px">
                                        <tr>
                                            <td>
                                                <div class="ATC_btn" style="width:80px;height:35px">Buy</div>
                                            </td>

                                            <td>
                                                <%--<button class="ATC_btn" style="width: 250px;height: 50px;border: none;" onclick="buttonClick()">Add To Cart</button>--%>
                                                <asp:Button ID="btnADC" runat="server" class="ATC_btn"  style="width: 250px;height: 50px;border: none;" Text="Add To Cart" OnClick="btnADC_Click" CausesValidation="false" CommandArgument="1" />
                                                
                                            </td>
                                        </tr>
                                    </table>
                                </div>

                        </td>

                        <td>
                           <div class="booksData_box" style="margin-left:60px">Veg</div>
                            <div class="booksData">
                                <img src="images/New_images5.jpg" />
                                <table style="width: 295px; border: 1px solid red; margin-top: 6px;margin-left:20px">
                                        <tr>
                                            <td>
                                                <div class="ATC_btn" style="width:80px;height:35px">Buy</div>
                                            </td>

                                            <td> 
                                                <asp:Button ID="btnADC1" runat="server" class="ATC_btn"  style="width: 250px;height: 50px;border: none;" Text="Add To Cart" OnClick="btnADC_Click" CausesValidation="false" CommandArgument="2" />
                                            </td>
                                        </tr>
                                </table>
                            </div>
                        </td>

                        <td>
                           <div class="booksData_box" style="margin-left:60px">Non_veg</div>
                            <div class="booksData">
                                <img src="images/New_images3.jpg" />
                                <table style="width: 295px; border: 1px solid red; margin-top: 6px;margin-left:20px">
                                        <tr>
                                            <td>
                                                <div class="ATC_btn" style="width:80px;height:35px">Buy</div>
                                            </td>

                                            <td>
                                                 <asp:Button ID="btnADC2" runat="server" class="ATC_btn"  style="width: 250px;height: 50px;border: none;" Text="Add To Cart" OnClick="btnADC_Click" CausesValidation="false" CommandArgument="3"  />
                                            </td>
                                        </tr>
                                </table>
                            </div>

                        </td>

                    </tr>
                </table>
                
         

            </div>

            <div class="second_box">
                <img src="images/New_images2.jpg" style="box-shadow: none; border-radius: 15px; margin-top: 4px; height: 340px; width: 750px" />
                <p style="font-size: 20px; word-spacing: 5px; color: white; margin-top: -190px; margin-left: 300px; margin-right: 300px">
                    Indian cuisine consists of a variety of regional and traditional cuisines native to India. Given the diversity in soil, climate, culture, ethnic groups, and occupations, 
                 these cuisines vary substantially and use locally available spices, herbs, vegetables, and fruits.
                  Rice and meat or vegetables are prepared separately, then combined and slow-cooked in the oven to create this aromatic “dry dish” (there's no creamy gravy-like sauce). Basmati rice is typically used.
                 most common spices used to flavor authentic Indian food include turmeric, cumin, coriander, mustard seeds, cardamom, chili, garlic, cloves, saffron, fennel, nutmeg, star anise, and fenugreek.
                </p>
                <img src="images/New_images.jpg" style="box-shadow: none; border-radius: 15px; height: 340px; width: 750px; float: right; margin-top: -330px" />
                
            </div>


            <div class="third_box">
                explore more
            </div>

            <p style="font-size:20px;margin-left:60px;">
                Choose your favourite food and
            </p>
             <b style="font-size:50px;margin-left:100px;">
                Enjoy !
            </b>

            <div class="fourth_box" style="margin-left: 420px ; margin-top:-180px">
                Indian food 
                <div class="food_box">
                    <div class="food_box_row">Maharashtraian</div>
                    <div class="food_box_row">Punjabi</div>
                    <div class="food_box_row">South Indian</div>
                    <div class="food_box_row">Bengali</div>

                </div>
            </div>

             <div class="fourth_box" style="margin-left: 620px ;margin-top:-45px">
                Chinese food
                  <div class="food_box" style="margin-left:-30px">
                     <div class="food_box_row">Szechuan</div>
                    <div class="food_box_row">Shandong</div>
                    <div class="food_box_row">Fujian</div>
                    <div class="food_box_row">Jiangsu</div>

                </div>
            </div> 

             <div class="fourth_box" style="margin-left: 820px;margin-top:-45px">
                Italian food
                  <div class="food_box" style="margin-left:-30px">
                     <div class="food_box_row">Pane</div>
                    <div class="food_box_row">Common pizzas</div>
                    <div class="food_box_row">Pasta varieties</div>
                    <div class="food_box_row">Pasta dishes.</div>

                </div>
            </div> 

            <div class="fourth_box" style="margin-left: 1020px ;margin-top:-45px">
                Maxican food 
                <div class="food_box" style="margin-left:-30px">
                     <div class="food_box_row">Mexican Rice</div>
                    <div class="food_box_row">Tamales</div>
                    <div class="food_box_row">Chiles en nogada</div>
                    <div class="food_box_row">Chilli Con Carne</div>

                </div>
                 
            </div>

            <div class="fourth_box" style="margin-left: 1220px ;margin-top:-45px">
                Korean food  
                <div class="food_box" style="margin-left:-30px">
                     <div class="food_box_row">Kimchi</div>
                    <div class="food_box_row">Bibimbap</div>
                    <div class="food_box_row">Red rice cakes</div>
                    <div class="food_box_row">Bulgogi</div>

                </div>
                
            </div>
            
<%--
            <img src="images/Pointing_image.jpg" style="margin-top:200px;width:150px;height:200px;box-shadow:none "/>
            
            <img src="images/Pointing_image1.jpg" style="margin-top:200px;width:150px;height:200px;box-shadow:none;float:right"/>--%>

             <div class="event_box">

                 <p style="margin-left:35px;word-spacing:7px; font-size:22px; color:orange">Make Particiapant in our new event and win amazing <b style="font-size:35px;color:darkred">food vouchers</b> and <b style="font-size:35px;color:darkred">CashBack</b> .</p>
              
                 <div class="food_event_box" style="background-color:darkorange;margin-left:180px;transform:rotate(-25deg) ;margin-top:100px">
                     <b style="color:white ; margin-left:30px ; font-size:20px">CASHBACK</b>
                     <svg xmlns="http://www.w3.org/2000/svg" width="100" height="75" fill="blanchedalmond" class="bi bi-wallet2" viewBox="0 0 16 16 " style="margin-left:35px">
                      <path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
                    </svg>

                 </div>
                 <div class="food_event_box" style="background-color:darkorange;margin-left:360px;margin-top:-100px;transform:rotate(25deg)">
                     <b style="color:white ; margin-left:30px ; font-size:20px">food vouchers</b>
                     <svg xmlns="http://www.w3.org/2000/svg" width="100" height="75" fill="blanchedalmond" class="bi bi-basket-fill" viewBox="0 0 16 16" style="margin-left:35px">
                      <path d="M5.071 1.243a.5.5 0 0 1 .858.514L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 6h1.717L5.07 1.243zM3.5 10.5a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3z"/>
                    </svg>
                 </div>
                 <div class="food_event_box" style="background-color:darkorange;margin-left:270px ; margin-top:-160px">
                     <b style="color:white ; margin-left:30px ; font-size:20px">Membership
                         <svg xmlns="http://www.w3.org/2000/svg" width="100" height="75" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16" style="margin-left:35px">
                          <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                        </svg>
                     </b>
                 </div>
<%--                 <div class="food_event_box"></div>--%>

                    <%--<img src="images/food_truck.jpg" style="width:500px ;height:270px ; box-shadow:none; border-radius:10px ; margin-left:60px; box-shadow:5px 5px 12px 5px grey" />--%>

                 <svg xmlns="http://www.w3.org/2000/svg" width="470" height="370" fill="darkred" class="bi bi-cart" viewBox="0 0 16 16" style="margin-left:70px ;margin-top:-20px ">
                  <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                </svg>

                 <div class="food_event" style="margin-top:-320px;margin-left:550px;box-shadow:5px 5px 20px 8px grey">four floor</div>
                
                 <div class="food_event" style=" margin-top:15px;margin-left:690px;box-shadow:5px 5px 20px 8px grey">third floor</div>
                
                 <div class="food_event" style="margin-top:15px;margin-left:790px;box-shadow:5px 5px 20px 8px grey">second floor</div>

                 <div class="food_event" style="margin-top:15px;margin-left:900px;box-shadow:5px 5px 20px 8px grey">first floor </div>
                 
                 <svg xmlns="http://www.w3.org/2000/svg" width="60" height="60" fill="darkred" class="bi bi-cart-check" viewBox="0 0 16 16" style="float:right;margin-top:-120px ;margin-right:50px">
                  <path d="M11.354 6.354a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                  <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                </svg>


                <p style="margin-top:15px; margin-left:550px;font-size:25px;color:darkred"> <b>Order food , step up stairs and collect gifts.</b> </p>

             </div>

            <footer>

               <p style="margin-left:30px;color:orange">
                   COMPANY
               </p>

                <p style="margin-left:150px;margin-top:-34px;color:orange">
                    CONTACT
                </p>

                <p style="margin-left:300px;margin-top:-34px;color:orange">
                    LEGAL
                </p>

                <p style="margin-left:750px;margin-top:-34px;color:orange">
                    WE DELIVER TO
                </p>

            <%--Columns for company--%>
                <p style="margin-left:30px ;margin-top:30px ;color:darkred">Team</p>
                <p style="margin-left:30px ;color:darkred">Carrers</p>
                <p style="margin-left:30px;color:darkred">Food blog </p>
                <p style="margin-left:30px;color:darkred">Food House</p>
            <%--Columns for company--%>

            <%--Columns for contact--%>
                <p style="margin-left:150px ; margin-top:-140px;color:darkred">Help & support</p>
                <p style="margin-left:150px;color:darkred">Partner with us</p>
                <p style="margin-left:150px;color:darkred">Ride with us </p>
            <%--Columns for contact--%>

            <%--Columns for legal--%>
                <p style="margin-left:300px ; margin-top:-105px;color:darkred">Terms & Conditions</p>
                <p style="margin-left:300px;color:darkred">Refund & Cancellation</p>
                <p style="margin-left:300px;color:darkred">Privacy Policy</p>
                <p style="margin-left:300px;color:darkred">Cookie Policy</p>
                <p style="margin-left:300px;color:darkred">Offers Terms</p>
            <%--Columns for legal--%>
                
            <%--Columns for WE DELIVER TO--%>
                <p style="margin-left:550px ; margin-top:-175px;color:darkred">Mumbai</p>
                <p style="margin-left:550px;color:darkred">Pune</p>
                <p style="margin-left:550px;color:darkred">Mahabaleshwar</p>
                <p style="margin-left:550px;color:darkred">Ratnagiri</p>
                <p style="margin-left:550px;color:darkred">Satara</p>
           <%--Columns for WE DELIVER TO--%>

           <%--Columns for WE DELIVER TO--%>
                <p style="margin-left:750px ; margin-top:-175px ;color:darkred">Kochi</p>
                <p style="margin-left:750px;color:darkred">Aurangabad</p>
                <p style="margin-left:750px;color:darkred">Banglore</p>
                <p style="margin-left:750px;color:darkred">Kolkata</p>
                <p style="margin-left:750px;color:darkred">Mysore</p>
           <%--Columns for WE DELIVER TO--%>

           <%--Columns for WE DELIVER TO--%>
                <p style="margin-left:950px ; margin-top:-175px;color:darkred">West Bengal</p>
                <p style="margin-left:950px;color:darkred">Karnatak</p>
                <p style="margin-left:950px;color:darkred">Shimla</p>
                <p style="margin-left:950px;color:darkred">Jammu-Kashir</p>
                <p style="margin-left:950px;color:darkred">Pondecherry</p>
           <%--Columns for WE DELIVER TO--%>

            

            <div class="footer_icon_play_store">
                
                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-google-play" viewBox="0 0 16 16" style="margin-top:10px ;margin-left:10px">
                  <path d="M14.222 9.374c1.037-.61 1.037-2.137 0-2.748L11.528 5.04 8.32 8l3.207 2.96 2.694-1.586Zm-3.595 2.116L7.583 8.68 1.03 14.73c.201 1.029 1.36 1.61 2.303 1.055l7.294-4.295ZM1 13.396V2.603L6.846 8 1 13.396ZM1.03 1.27l6.553 6.05 3.044-2.81L3.333.215C2.39-.341 1.231.24 1.03 1.27Z"/>
                </svg>

                <p style="margin-left:60px ; margin-top:-50px">GET IT ON</p>
                <p style="margin-left:60px ;margin-top:-15px">Google Play</p>

            </div>
                
            <div class="footer_icon_app_store">
                
               <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-apple" viewBox="0 0 16 16">
                  <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z"/>
                  <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z"/>
                </svg>

                <p style="margin-left:60px ; margin-top:-50px">GET IT ON</p>
                <p style="margin-left:60px ;margin-top:-15px">App Store</p>

            </div>
                
            </footer>
        </div>
    </form>
</body>
</html>
