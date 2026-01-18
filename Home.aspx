<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EduPay - Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet" />
    <style>
        body { 
    font-family: 'Poppins', sans-serif;
    background: linear-gradient(135deg, #e8f5e9 0%, #f1f8e9 50%, #e1f5fe 100%);
    min-height: 100vh;
    margin: 0;
    position: relative;
}

body::before { 
    content: '';
    position: fixed;
    top: 0; 
    left: 0; 
    width: 100%; 
    height: 100%;
    background: radial-gradient(circle at 20% 80%, rgba(40, 167, 69, 0.05) 0%, transparent 50%), currentColor; 
    z-index: -1;
}

/* Navbar */
.navbar { 
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 25px;
    background: rgba(0,0,0,0.1);
    backdrop-filter: blur(10px);
    position: sticky;
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
    gap: 25px;
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

/* Hero */
.hero { 
    text-align: center;
    padding: 100px 20px;
    background: linear-gradient(135deg, rgba(232, 245, 233, 0.9) 0%, rgba(200, 230, 201, 0.9) 100%);
    border-radius: 25px;
    margin: 40px 20px;
    box-shadow: 0 15px 40px rgba(40, 167, 69, 0.25);
    position: relative;
    overflow: hidden;
    border: 1px solid rgba(255,255,255,0.3);
}

.hero::before { 
    content: '';
    position: absolute;
    top: -50%;
    left: -50%;
    width: 200%;
    height: 200%;
    background: radial-gradient(circle, rgba(255,255,255,0.3) 0%, transparent 70%);
    animation: float 6s ease-in-out infinite;
    opacity: 0.6;
}

@keyframes float { 
    0%, 100% { transform: translate(0,0) rotate(0deg); }
    50% { transform: translate(20px,-20px) rotate(5deg); }
}

.hero h1 { 
    font-size: 52px;
    color: #2b7a33;
    margin-bottom: 25px;
    font-weight: 700;
    text-shadow: 0 2px 6px rgba(0,0,0,0.1);
    animation: fadeInUp 1s ease-out;
}

.hero p { 
    font-size: 22px;
    color: #555;
    margin-bottom: 50px;
    font-weight: 400;
    animation: fadeInUp 1s ease-out 0.2s both;
}

@keyframes fadeInUp { 
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

.btn-custom { 
    background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
    color: white;
    font-weight: 600;
    border: none;
    padding: 18px 35px;
    border-radius: 50px;
    margin: 10px;
    transition: all 0.4s ease;
    box-shadow: 0 6px 20px rgba(40,167,69,0.3);
    position: relative;
    overflow: hidden;
    animation: fadeInUp 1s ease-out 0.4s both;
}

.btn-custom:hover { 
    transform: translateY(-3px) scale(1.05);
    box-shadow: 0 10px 30px rgba(40,167,69,0.4);
    color: white;
}

.btn-custom::before { 
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255,255,255,0.3), transparent);
    transition: left 0.6s;
}

.btn-custom:hover::before { 
    left: 100%;
}

.hero-image { 
    width: 40%;
    height: auto;
    border-radius: 20px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.2);
    margin: 30px auto;
    display: block;
    transition: transform 0.3s ease;
}

.hero-image:hover { 
    transform: scale(1.02);
}

/* Features */
.features-section { 
    background: rgba(255,255,255,0.95);
    border-radius: 25px;
    padding: 60px 20px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.1);
    margin: 40px 20px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.2);
}

.feature-card { 
    text-align: center;
    padding: 40px 20px;
    border-radius: 20px;
    background: linear-gradient(135deg, rgba(248,249,250,0.8) 0%, rgba(233,236,239,0.8) 100%);
    transition: all 0.4s ease;
    margin-bottom: 25px;
    position: relative;
    overflow: hidden;
}

.feature-card::before { 
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 4px;
    background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
    transform: scaleX(0);
    transition: transform 0.3s ease;
}

.feature-card:hover::before { 
    transform: scaleX(1);
}

.feature-card:hover { 
    transform: translateY(-8px) scale(1.02);
    box-shadow: 0 12px 35px rgba(40,167,69,0.25);
}

.feature-icon { 
    font-size: 56px;
    color: #28a745;
    margin-bottom: 25px;
    transition: transform 0.3s ease;
}

.feature-card:hover .feature-icon { 
    transform: scale(1.1) rotate(5deg);
}

.feature-card h3 { 
    color: #2b7a33;
    font-weight: 600;
    margin-bottom: 18px;
    font-size: 24px;
}

/* About */
.about-section { 
    background: linear-gradient(135deg, rgba(255,255,255,0.9) 0%, rgba(248,249,250,0.9) 100%);
    border-radius: 25px;
    padding: 60px 20px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.08);
    margin: 40px 20px;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.3);
}

.about-section h2 { 
    color: #2b7a33;
    font-weight: 700;
    text-align: center;
    margin-bottom: 35px;
    font-size: 40px;
}

.about-section p { 
    font-size: 19px;
    color: #555;
    line-height: 1.7;
    text-align: justify;
}

/* Contact Section */
.contact-section { 
    background: linear-gradient(135deg, rgba(232, 245, 233, 0.95) 0%, rgba(225, 245, 254, 0.95) 100%);
    border-radius: 25px;
    padding: 70px 30px;
    margin: 40px 20px;
    box-shadow: 0 15px 40px rgba(40, 167, 69, 0.2);
    backdrop-filter: blur(8px);
    border: 1px solid rgba(255,255,255,0.3);
}

.contact-title { 
    text-align: center;
    font-size: 42px;
    font-weight: 700;
    color: #2b7a33;
    margin-bottom: 15px;
}

.contact-subtitle { 
    text-align: center;
    font-size: 18px;
    color: #555;
    margin-bottom: 50px;
}

.contact-info .info-box { 
    background: rgba(255,255,255,0.9);
    padding: 25px;
    margin-bottom: 20px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    transition: all 0.3s ease;
}

.contact-info .info-box:hover { 
    transform: translateY(-5px);
    box-shadow: 0 12px 25px rgba(40,167,69,0.25);
}

.contact-info i { 
    font-size: 28px;
    color: #28a745;
    margin-bottom: 10px;
}

.contact-info h5 { 
    font-weight: 600;
    color: #2b7a33;
    margin-bottom: 8px;
}

.contact-form { 
    background: rgba(255,255,255,0.95);
    padding: 70px;
    border-radius: 20px;
    box-shadow: 0 8px 30px rgba(0,0,0,0.1);
}

.custom-input { 
    border-radius: 12px;
    padding: 14px 18px;
    border: 1px solid #ddd;
    transition: all 0.3s ease;
}

.custom-input:focus { 
    border-color: #28a745;
    box-shadow: 0 0 10px rgba(40,167,69,0.25);
}

/* Footer */
.footer { 
    background: linear-gradient(135deg, #28a745 0%, #20c997 100%);
    color: white;
    text-align: center;
    padding: 25px;
    margin-top: 60px;
    border-radius: 0 0 25px 25px;
    box-shadow: 0 -4px 20px rgba(40,167,69,0.4);
}

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
    .sec-2 { display: none !important; }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navbar -->
        <div class="navbar">
            <a href="#name" class="name"><b>KnowledgeHub</b><i class="fa-solid fa-graduation-cap"></i></a>
            <div class="ho">
<a href="Login.aspx">STAFF LOGIN</a>
<a href="Home.aspx" class="active">HOME</a>
<a href="StudentFee.aspx">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
<a href="#contact">CONTACT</a>
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
<a href="Home.aspx" class="active">HOME</a>
<a href="StudentFee.aspx">PAY STUDENT FEE</a>
<a href="PaymentHistory.aspx">PAYMENT HISTORY</a>
<a href="#contact">CONTACT</a>
        </div>
        <div id="overlay" class="overlay"></div>

        <!-- Hero Section -->
        <div class="hero">
            <div class="container">
                <h1><i class="fas fa-school me-3"></i>Welcome to KnowledgeHub School Portal</h1>
                <p>Manage school fees with ease, track payments in real time, and access detailed histories—all designed to support parents, students, and staff.</p>
                <a href="StudentFee.aspx" class="btn btn-custom"><i class="fas fa-plus me-2"></i>Pay Student Fee</a>
                <a href="PaymentHistory.aspx" class="btn btn-custom"><i class="fas fa-eye me-2"></i>View Payment History</a>
                <img src="classrooms.jpeg" alt="EduPay School" class="hero-image">
            </div>
        </div>

        <!-- Features Section -->
        <div class="features-section">
            <div class="container">
                <h2 class="text-center mb-5" style="color: #2b7a33; font-weight: 700; font-size: 40px;">Why Choose EduPay?</h2>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card feature-card">
                            <div class="feature-icon"><i class="fas fa-lock"></i></div>
                            <h3>Secure Payments</h3>
                            <p>Process fees with bank-level security and encryption for peace of mind.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card feature-card">
                            <div class="feature-icon"><i class="fas fa-clock"></i></div>
                            <h3>Real-Time Updates</h3>
                            <p>Instant notifications and live tracking of all transactions and balances.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card feature-card">
                            <div class="feature-icon"><i class="fas fa-mobile-alt"></i></div>
                            <h3>Mobile Friendly</h3>
                            <p>Access your account anytime, anywhere with our responsive design.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- About Section -->
        <div id="about" class="about-section">
            <div class="container">
                <h2>About Our School</h2>
                <p>
                    At KnowledgeHub School, we believe that education is more than just academics—it’s about nurturing young minds, building character, and preparing students for a bright future.
                    <br><br>
                    We are committed to providing a holistic learning environment where curiosity is encouraged, creativity is celebrated, and knowledge becomes a lifelong journey.
                    Our dedicated team of educators ensures that every child receives personalized attention, fostering both intellectual and emotional growth. We integrate modern teaching methods with traditional values, creating a balance that shapes well-rounded learners ready to face tomorrow’s challenges.
                </p>
                <div class="text-center mt-4">
                    <a class="btn btn-custom" data-bs-toggle="collapse" href="#moreContent" role="button" aria-expanded="false" aria-controls="moreContent">
                        <i class="fas fa-arrow-down me-2"></i>Learn More
                    </a>
                </div>
                <div class="collapse mt-3" id="moreContent">
                    <div class="card card-body">
                        At KnowledgeHub School, education is not just about lessons—it’s about inspiring excellence, nurturing creativity, and shaping bright futures. We go beyond classrooms to build character, instill values, and empower every child to become a confident learner, a responsible citizen, and a future leader.
                    </div>
                </div>
            </div>
        </div>
                <!-- Contact Section -->
        <div id="contact" class="contact-section">
            <div class="container">
                <h2 class="contact-title">Contact Us</h2>
                <p class="contact-subtitle">We’d love to hear from you. Reach out with any questions or feedback!</p>
                <div class="row">
                    <!-- Contact Info -->
                    <div class="col-md-5 contact-info">
                        <div class="info-box">
                            <i class="fas fa-map-marker-alt"></i>
                            <h5>Our Address</h5>
                            <p>123 Knowloedgehub Street, Paris , Chennai - 600013 </p>
                        </div>
                        <div class="info-box">
                            <i class="fas fa-envelope"></i>
                            <h5>Email Us</h5>
                            <p>knowledgehub@gmail.com</p>
                        </div>
                        <div class="info-box">
                            <i class="fas fa-phone"></i>
                            <h5>Call Us</h5>
                            <p>+91 91505 68397</p>
                        </div>
                    </div>

                    <!-- Contact Form -->
                    <div class="col-md-7">
                        <div class="contact-form">
                            <form>
                                <div class="mb-3">
                                    <input type="text" class="form-control custom-input" placeholder="Your Name" required />
                                </div>
                                <div class="mb-3">
                                    <input type="email" class="form-control custom-input" placeholder="Your Email" required />
                                </div>
                                <div class="mb-3">
                                    <textarea class="form-control custom-input" rows="5" placeholder="Your Message" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-custom w-100">
                                    <i class="fas fa-paper-plane me-2"></i>Send Message
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <p>&copy; 2025 EduPay School Portal. All rights reserved. | <i class="fas fa-envelope me-1"></i> support@edupay.com | <i class="fas fa-phone me-1"></i> +1 (555) 123-4567</p>
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
