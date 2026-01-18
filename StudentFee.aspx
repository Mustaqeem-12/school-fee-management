<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFee.aspx.cs" Inherits="School_Project.StudentFee" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Fee Payment</title>
    <style>
        body {
            font-family: "Poppins", sans-serif;
            background: linear-gradient(135deg, #e8f5e9, #e1f5fe);
            min-height: 100vh;
            margin: 0;
        }

        /* Navbar (kept same style) */
       /* Navbar */
.navbar { 
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 25px;
    background: rgba(0,0,0,0.1);
    background-color:black;
    top: 0;
    z-index: 1000;
    font-size: 18px;
    font-weight: 800;
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
    transition: all 0.3s;
}

.ho a:hover,
.ho a.active { 
    background: rgba(255,255,255,0.1);
    color: red;
    transform: scale(1.05);
}

/* Search box */
.sec-2 { 
    display: flex;
    align-items: center;
    background: rgba(255,255,255,0.2);
    border-radius: 25px;
    padding: 5px;
    backdrop-filter: blur(5px);
}

.inp1 { 
    background: transparent;
    border: none;
    padding: 0 15px;
    color: white;
    outline: none;
    width: 200px;
    height: 36px;
    font-size: 14px;
}

.inp1::placeholder { 
    color: rgba(255,255,255,0.7);
}

.but1 { 
    background: rgba(255,255,255,0.3);
    border: none;
    padding: 0 15px;
    border-radius: 20px;
    color: white;
    cursor: pointer;
    height: 35px;
}

.but1:hover { 
    background: rgba(255,255,255,0.4);
}

/* Hamburger */
#bar { 
    display: none;
    background: rgba(255,255,255,0.2);
    border: none;
    padding: 8px 12px;
    border-radius: 5px;
    color: white;
    font-size: 25px;
    cursor: pointer;
}

#bar:hover { 
    background: rgba(255,255,255,0.3);
}

/* Sidebar */
.side-bar { 
    position: fixed;
    top: 0;
    right: -250px;
    width: 200px;
    min-height: 100vh;
    background: rgba(0,0,0,0.95);
    padding: 80px 20px 40px;
    display: flex;
    flex-direction: column;
    gap: 1rem;
    transition: all 0.4s ease;
    z-index: 999;
}

.side-bar.active { 
    right: 0;
}

.side-bar a { 
    color: white;
    padding: 10px 15px;
    border-radius: 10px;
    text-decoration: none;
    transition: all 0.3s;
}

.side-bar a:hover,
.side-bar a.active { 
    background: rgba(255,255,255,0.1);
    color: red;
    transform: translateX(-5px);
}

/* Overlay */
.overlay { 
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0,0,0,0.3);
    z-index: 998;
    display: none;
}

.overlay.active { 
    display: block;
}

        /* Center Form Card */
        .form-container {
            max-width: 450px;
            margin: 40px auto;
/*            background: white;*/
            padding: 70px 25px;
            background-image:url('feebg.url');
            border-radius: 20px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.1);
        }
        .form-container p { margin: 12px 0; }

        /* Inputs same size */
        .form-container input[type="text"], 
        .form-container select {
            width: 90%;
            padding: 12px 15px;
            border-radius: 12px;
            border: 1px solid #ccc;
            outline: none;
            font-size: 14px;
        }

        /* Buttons */
        .btn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 25px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 10px;
        }
        #Button1 { background: black; color: white; }
        #Button1:hover { background: red; }

        /* Update + Delete side by side */
        .btn-row {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        .btn-row .btn {
            width: 50%;
            margin-top: 0;
        }
        #Button2 { background: #4CAF50; color: white; }
        #Button2:hover { background: #388E3C; }
        #Button3 { background: #F44336; color: white; }
        #Button3:hover { background: #D32F2F; }
        /* Responsive */
@media (max-width: 1024px) { 
    .ho { display: none; }
    #bar { display: block; }
}

@media (max-width: 768px) { 
    .sec-2 { display: none; }
    .hero h1 { font-size: 40px; }
    .hero p { font-size: 18px; }
    .btn-custom { padding: 15px 28px; font-size: 16px; }
    .features-section,
    .about-section { margin: 20px 10px; padding: 40px 15px; }
    .hero-image { height: auto; width: 100%; }
}

@media (max-width: 769px) { 
    .hero-image { height: 40vh; width: 100%; object-fit: cover; }
}

@media only screen and (max-width: 425px) { 
  
    </style>
</head>
<body>
    <form id="form1" runat="server">
               <!-- Navbar -->
        <div class="navbar">
            <a href="#name" class="name"><b>KnowledgeHub</b><i class="fa-solid fa-graduation-cap"></i></a>
            <div class="ho">
<a href="Login.aspx">STAFF LOGIN</a>
<a href="Home.aspx" >HOME</a>
<a href="StudentFee.aspx" class="active">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
<a href="Home.aspx#contact">CONTACT</a>
            </div>
            <div class="sec1 d-flex align-items-center gap-2">
                <div class="sec-2">
                    <input type="text" placeholder="Search..." class="inp1"/>
                    <button type="submit" class="but1">Search</button>
                </div>
                <button type="button" id="bar"><i class="fa-solid fa-bars"></i></button>
            </div>
        </div>

        <!-- Sidebar -->
        <div id="sidebar" class="side-bar">
<a href="Login.aspx">STAFF LOGIN</a>
<a href="Home.aspx" >HOME</a>
<a href="StudentFee.aspx" class="active">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
<a href="Home.aspx#contact">CONTACT</a>
        </div>
        <div id="overlay" class="overlay"></div>

        <!-- Form -->
        <div class="form-container">
            <p><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Roll Number"></asp:TextBox></p>
            <p><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Student Name"></asp:TextBox></p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Grade 6</asp:ListItem>
                    <asp:ListItem>Grade 7</asp:ListItem>
                    <asp:ListItem>Grade 8</asp:ListItem>
                    <asp:ListItem>Grade 9</asp:ListItem>
                    <asp:ListItem>Grade 10</asp:ListItem>
                    <asp:ListItem>Grade 11</asp:ListItem>
                    <asp:ListItem>Grade 12</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p><asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Fee Amount"></asp:TextBox></p>
            <p>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Credit Card</asp:ListItem>
                    <asp:ListItem>Debit Card</asp:ListItem>
                    <asp:ListItem>Net Banking</asp:ListItem>
                    <asp:ListItem>UPI</asp:ListItem>
                </asp:DropDownList>
            </p>

            <!-- Pay Fee Button (full width) -->
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add To Pay" CssClass="btn" />

            <!-- Update + Delete (same line) -->
            <div class="btn-row">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" CssClass="btn" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" CssClass="btn" />
            </div>
        </div>
    </form>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
 <script>
     // Sidebar toggle
     const bar = document.getElementById('bar');
     const sidebar = document.getElementById('sidebar');
     const overlay = document.getElementById('overlay');

     bar.addEventListener('click', () => {
         sidebar.classList.toggle('active');
         overlay.classList.toggle('active');
     });

     overlay.addEventListener('click', () => {
         sidebar.classList.remove('active');
         overlay.classList.remove('active');
     });
 </script>
</body>
</html>
