<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="School_Project.PaymentHistory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment History</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #f4f7fc, #e8f0fe);
            min-height: 100vh;
            padding-bottom: 40px;
        }

        /* Navbar */
        .navbar {
            background: black;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-weight: 800;
            padding: 15px 25px;
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .name {
            font-size: 28px;
            font-weight: 800;
            color: orange;
            text-decoration: none;
            letter-spacing: 2px;
        }

        .ho {
            display: flex;
            gap: 40px;
            align-items: center;
        }

        .ho a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 8px 16px;
            border-radius: 20px;
            transition: all 0.3s ease;
        }

        .ho a:hover,
        .ho a.active {
            background: rgba(255, 255, 255, 0.1);
            color: red;
            transform: scale(1.05);
        }

        /* Navbar search box */
        .sec1 {
            display: flex;
            gap: 15px;
            align-items: center;
        }

        .sec-2 {
            display: flex;
            align-items: center;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 25px;
            padding: 5px;
            backdrop-filter: blur(5px);
        }

        .inp1, #TextBox1 {
            background: transparent;
            border: none;
            padding: 0 15px;
            color: white;
            outline: none;
            width: 220px;
            height: 36px;
            font-size: 14px;
        }

        .inp1::placeholder, #TextBox1::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        .but1, #Button1 {
            background: rgba(255, 255, 255, 0.3);
            border: none;
            padding: 0 20px;
            border-radius: 20px;
            color: white;
            cursor: pointer;
            height: 35px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .but1:hover, #Button1:hover {
            background: rgba(255, 255, 255, 0.4);
        }

        /* Hamburger */
        #bar {
            display: none;
            background: rgba(255, 255, 255, 0.2);
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            color: white;
            font-size: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        #bar:hover {
            background: rgba(255, 255, 255, 0.3);
        }

        /* Sidebar */
        .side-bar {
            position: fixed;
            top: 0;
            right: -250px;
            width: 200px;
            min-height: 50vh;
            background: rgba(0, 0, 0, 0.9);
            backdrop-filter: blur(10px);
            display: flex;
            flex-direction: column;
            padding: 80px 20px 40px;
            gap: 1rem;
            transition: all 0.4s ease-in-out;
            z-index: 999;
            border-radius: 0 0 0 20px;
            text-align: center;
        }

        .side-bar.active {
            right: 0;
        }

        .side-bar a {
            display: block;
            padding: 15px 10px;
            margin: 10px 0;
            border-radius: 10px;
            color: white;
            text-decoration: none;
        }

        .side-bar a:hover,
        .side-bar a.active {
            background: rgba(255, 255, 255, 0.1);
            transform: translateX(-5px);
            color: red;
        }

        /* Overlay */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.3);
            z-index: 998;
            display: none;
        }

        .overlay.active {
            display: block;
        }

        /* Responsive */
        @media (max-width: 1024px) {
            .ho {
                display: none;
            }
            #bar {
                display: block;
            }
        }
        @media (max-width: 768px) {
            .sec-2 {
                display: none;
            }
        }
        @media (max-width: 480px) {
            .navbar {
                padding: 8px 15px;
            }
        }

        /* ===== Payment History Section ===== */
        .history-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 60px;
            text-align: center;
        }

        #Label1 {
            font-size: 26px;
            font-weight: bold;
            color: #222;
            margin-bottom: 25px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Search box same as navbar */
        .search-box {
            display: flex;
            align-items: center;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 25px;
            padding: 6px;
            backdrop-filter: blur(5px);
            margin-bottom: 30px;
        }

        #TextBox1 {
            color: white;
            width: 250px;
        }

        /* GridView */
        #GridView1 {
            border-collapse: collapse;
            width: 85%;
            max-width: 950px;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.15);
            border-radius: 15px;
            overflow: hidden;
            background: white;
        }

        #GridView1 th {
            background: #4a90e2;
            color: white;
            text-align: center;
            padding: 14px;
            font-size: 15px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        #GridView1 td {
            padding: 14px;
            border-bottom: 1px solid #f0f0f0;
            text-align: center;
            font-size: 14px;
            color: #444;
        }

        #GridView1 tr:nth-child(even) {
            background: #f9fbff;
        }

        #GridView1 tr:hover {
            background: #eef5ff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <a href="#name" class="name">KnowledgeHub <i class="fa-solid fa-graduation-cap"></i></a>
            <div class="ho">
                <a href="Login.aspx">STAFF LOGIN</a>
                <a href="Home.aspx">HOME</a>
                <a href="StudentFee.aspx">PAY STUDENT FEE</a>
                <a href="programpage.html" class="active">PAYMENT HISTORY</a>
                <a href="Home.aspx#contact">CONTACT</a>
            </div>
            <div class="sec1">
                <div class="sec-2">
                    <input type="text" placeholder="Type to Text" class="inp1"/>
                    <button type="submit" class="but1">Search</button>
                </div>
                <button id="bar"><i class="fa-solid fa-bars"></i></button>
            </div>
        </div>

        <!-- Sidebar -->
        <div class="side-bar" id="sidebar">
            <a href="Login.aspx">STAFF LOGIN</a>
            <a href="Home.aspx">HOME</a>
            <a href="StudentFee.aspx">PAY STUDENT FEE</a>
            <a href="programpage.html" class="active">PAYMENT HISTORY</a>
            <a href="Home.aspx#contact">CONTACT</a>
        </div>
        <div class="overlay" id="overlay"></div>

        <!-- Payment History Section -->
        <div class="history-section">
            <asp:Label ID="Label1" runat="server" Text="Payment History"></asp:Label>

            <!-- Styled Search -->
            <div class="search-box">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search Roll Number..." OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
            </div>

            <!-- GridView -->
            <asp:GridView ID="GridView1" runat="server" Height="262px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="729px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
