<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WEB DESIGN</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: "Poppins", serif;
    line-height: 1.6;
    color: #333;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    min-height: 100vh;
    overflow-x: hidden;
}

/* Container */
.container-1 {
    min-height: 100vh;
    position: relative;
    background-image: url('/pexels-danbuilds-633409.jpg');
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    background-attachment: fixed;
    animation: fadeIn 1s ease-in;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to   { opacity: 1; }
}

/* Navbar */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    font-weight: 800;
    padding: 15px 25px;
    background: rgba(0,0,0,0.1);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid rgba(255,255,255,0.2);
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
    background: rgba(255,255,255,0.1);
    color: red;
    transform: scale(1.05);
}

/* Search Box */
.sec1 {
    display: flex;
    gap: 15px;
    align-items: center;
}

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
    font-weight: 500;
    transition: all 0.3s ease;
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
    transition: all 0.3s ease;
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
    min-height: 50vh;
    background: rgba(0,0,0,0.9);
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
    background: rgba(255,255,255,0.1);
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
    background: rgba(0,0,0,0.3);
    z-index: 998;
    display: none;
}

.overlay.active {
    display: block;
}

/* Main Content */
.page {
    display: flex;
    gap: 40px;
    padding: 0 20px;
    margin: 80px auto 0;
    max-width: 1400px;
}

.leftpage {
    color: white;
    flex: 1;
    max-width: 60%;
    padding: 2rem;
}

.leftpage h2 {
    font-size: clamp(28px,4vw,40px);
    font-weight: 300;
    color: white;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.leftpage h1 {
    font-size: clamp(35px,6vw,50px);
    font-weight: 700;
    color: orange;
    text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.para1 {
    font-size: clamp(16px,2vw,20px);
    margin: 20px 0;
    line-height: 1.8;
    color: white;
    opacity: 0.9;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
}

.but2 {
    background: linear-gradient(45deg, #ff6b6b, #ee5a24);
    border: none;
    padding: 1rem 2rem;
    border-radius: 25px;
    color: white;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    width: 140px;
    height: 45px;
    margin-top: 20px;
}

.but2:hover {
    transform: translateY(-3px);
}

/* Right Page (Login) */
.rightpage {
    background: rgba(255,254,254,0.3);
    backdrop-filter: blur(5px);
    border-radius: 15px;
    padding: 30px;
    width: 100%;
    max-width: 380px;
    min-height: 450px;
    box-shadow: 0 8px 32px rgba(0,0,0,0.3);
}

.log {
    background: white;
    color: black;
    height: 50px;
    width: 100%;
    font-size: 24px;
    font-weight: 600;
    border: none;
    border-radius: 10px;
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 30px;
}

.li1 {
    width: 100%;
    padding: 5px;
    list-style-type: none;
    border: none;
    border-bottom: 2px solid orange;
    background: transparent;
    color: white;
    font-size: 18px;
    margin-bottom: 25px;
    transition: all 0.3s ease;
}

.li1:focus {
    border-bottom-color: red;
    transform: scale(1.02);
}

.li1::placeholder {
    color: rgba(255,255,255,0.7);
}

.log1 {
    width: 100%;
    height: 50px;
    margin: 11px 0;
    background: rgb(179,89,5);
    border: 2px solid rgb(179,89,5);
    color: white;
    font-size: 18px;
    font-weight: 600;
    cursor: pointer;
    border-radius: 10px;
    transition: all 0.3s ease;
}

.para {
    text-align: center;
    margin: 20px 0 10px;
    color: white;
    font-size: 16px;
}

.sign {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 8px;
    margin-bottom: 25px;
}

.anc {
    color: orange;
    text-decoration: underline;
    font-weight: 600;
}

.anc:hover {
    color: red;
}

.apps {
    display: flex;
    justify-content: center;
    gap: 30px;
    font-size: 24px;
}

.apps a {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 45px;
    height: 45px;
    border-radius: 50%;
    background: rgba(255,255,255,0.1);
    color: white;
    text-decoration: none;
    transition: 0.3s;
}

.apps a:hover {
    background: rgba(255,255,255,0.2);
    transform: translateY(-3px);
}

/* Responsive */
@media (max-width: 1024px) {
    .ho {
        display: none;
    }

    #bar {
        display: block;
    }

    .page {
        flex-direction: column;
        align-items: center;
        margin: 40px auto 0;
        gap: 40px;
    }

    .leftpage {
        max-width: 100%;
        text-align: center;
    }

    .rightpage {
        max-width: 450px;
    }
}

@media (max-width: 768px) {
    .sec-2 {
        display: none;
    }

    .page {
        margin: 20px auto 0;
        gap: 30px;
        padding: 0 15px;
    }

    .leftpage h2 {
        font-size: 28px;
    }

    .leftpage h1 {
        font-size: 38px;
    }
}

@media (max-width: 480px) {
    .navbar {
        padding: 8px 15px;
    }

    .name {
        font-size: 20px;
    }

    .rightpage {
        padding: 20px;
        min-width: 95%;
    }

    .log {
        font-size: 20px;
        height: 45px;
    }

    .li1 {
        font-size: 16px;
    }
}

</style>
</head>
<body>

<div class="container-1">
    <!-- Navbar -->
    <div class="navbar">
        <a href="#name" class="name">KnowledgeHub <i class="fa-solid fa-graduation-cap"></i></a>
        <div class="ho">
<a href="Login.aspx" class="active">STAFF LOGIN</a>
<a href="Home.aspx" >HOME</a>
<a href="StudentFee.aspx">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
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
<a href="Login.aspx" class="active">STAFF LOGIN</a>
<a href="Home.aspx" >HOME</a>
<a href="StudentFee.aspx">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
<a href="Home.aspx#contact">CONTACT</a>
    </div>
    <div class="overlay" id="overlay"></div>

    <!-- Main Content -->
    <div class="page">
        <div class="leftpage">
            <h2>STAFF </h2>
            <h1>LOGIN</h1>
            <h2>PORTAL</h2>
            <p class="para1">A secure login area only for authorized staff.Requires username and password provided by the administration.Protects data and ensures only staff can access attendance features.</p>
            <button type="submit" class="but2">JOIN US</button>
        </div>

        <div class="rightpage">
            <h2 class="log">Login here</h2>
            <li><input type="text" placeholder="Enter Email Here" class="li1"></li>
            <li><input type="password" placeholder="Enter Password" class="li1"></li>
            <a href="home.aspx"><button type="submit" class="log1">Login</button></a>
            <p class="para">Don't have an account?</p>
            <h3 class="sign"><a href="signup.html" class="anc">SignUp</a><p>here</p></h3>
            <div class="apps">
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-facebook"></i></a>
                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                <a href="#"><i class="fa-brands fa-google"></i></a>
            </div>
        </div>
    </div>
</div>

<script>
    // Hamburger toggle
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
