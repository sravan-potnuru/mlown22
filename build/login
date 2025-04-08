<!-- //login.html

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="../static/newcss.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
   
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@700&display=swap" rel="stylesheet">
</head>

<body>
    <nav>
        <ul>
            <div class="logo">Disease Detection</div>
            <li><a href="index.html">HOME</a></li>
            <li><a href="parkinson">Parkinson's</a></li>
            <li><a href="diabetes">Diabetes</a></li>
            <li><a href="heart">HEART</a></li>
            <li><a href="liver">LIVER</a></li>
            <li> <a class="nav-link" id="kidney-link" href="kidney">KIDNEY</a></li>
            <li><a href="register">REGISTER</a></li>
            <li><a href="login">LOGIN</a></li>
            <li><a href="logout">LOGOUT</a></li>
            <li><a href="profile" style="color:white;margin-left:0px;"></a></li>
        </ul>
    </nav>

    <div class="container">
        <div class="login-form">
            <h1>Login</h1>
            <form action="login" method="post">
                <div class="msg"></div> 
                <input id="username" name="username" type="text" placeholder="Enter Your Username" class="textbox"
                    required>
                <br><br>
                <input id="password" name="password" type="password" placeholder="Enter Your Password" class="textbox"
                    required>
                <br><br>
                <input type="submit" class="btn" value="Sign In">
            </form>
            <p>Don't have an account? <a href="register">Sign Up here</a></p>
        </div>
    </div>
</body>

</html> -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Disease Detection</title>
    <link rel="stylesheet" href="../static/newcss.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
   
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Montserrat:wght@700&display=swap" rel="stylesheet">
<style>
    /* Login form styles */
    .form-container {
        margin-top: 80px;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: calc(100vh - 200px);
    }
    
    .login-form {
        background-color: rgba(15, 23, 42, 0.9);
        backdrop-filter: blur(10px);
        border: 2px solid rgba(0, 238, 255, 0.7);
        border-radius: 16px;
        padding: 25px 20px;
        width: 90%;
        max-width: 340px;
        text-align: center;
        box-shadow: 0 0 25px rgba(0, 238, 255, 0.3);
    }
    
    .login-form h1 {
        color: #fff;
        font-weight: 700;
        font-size: 24px;
        margin-bottom: 20px;
        margin-top: 0;
    }
    
    .form-group {
        position: relative;
        margin-bottom: 20px;
    }
    
    .form-control {
        width: 100%;
        height: 50px;
        padding: 10px 15px;
        font-size: 16px;
        color: white;
        background-color: rgba(30, 41, 59, 0.7);
        border: 2px solid rgba(0, 238, 255, 0.4);
        border-radius: 8px;
        outline: none;
        transition: all 0.3s;
        box-sizing: border-box;
    }
    
    .form-control:focus {
        border-color: #0ef;
        box-shadow: 0 0 15px rgba(0, 238, 255, 0.5);
    }
    
    .form-label {
        position: absolute;
        left: 15px;
        top: 15px;
        color: #aaa;
        font-size: 16px;
        transition: all 0.3s;
        pointer-events: none;
    }
    
    .form-control:focus ~ .form-label,
    .form-control:not(:placeholder-shown) ~ .form-label {
        top: -10px;
        left: 10px;
        font-size: 12px;
        background-color: rgba(15, 23, 42, 1);
        padding: 0 5px;
        color: #0ef;
        font-weight: 500;
    }
    
    .form-control::placeholder {
        color: transparent;
    }
    
    .btn-login {
        padding: 12px 0;
        background: linear-gradient(45deg, #00bfff, #0ef);
        color: #0F172A;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 600;
        letter-spacing: 1px;
        transition: all 0.3s;
        width: 100%;
        margin: 5px 0 10px;
    }
    
    .btn-login:hover {
        transform: translateY(-2px);
        box-shadow: 0 0 25px rgba(0, 238, 255, 0.8);
    }
    
    .register-text {
        margin-top: 15px;
        color: #cdcdcd;
        font-size: 14px;
    }
    
    .register-link {
        color: #0ef;
        text-decoration: none;
        transition: all 0.3s;
        font-weight: 500;
    }
    
    .register-link:hover {
        text-decoration: underline;
    }
    
    .msg {
        color: #0ef;
        margin-bottom: 15px;
        font-size: 14px;
    }

    /* Navbar styles */
    nav.navbar {
        background-color: rgba(17, 24, 39, 0.8);
        backdrop-filter: blur(10px);
        padding: 15px 0;
        position: fixed;
        width: 100%;
        top: 0;
        z-index: 1000;
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    
    .logo {
        margin-left: 2rem;
        color: white;
        font-family: 'Montserrat', sans-serif;
        font-size: 20px;
        font-weight: bold;
        letter-spacing: 1px;
        text-decoration: none;
        text-shadow: 0 0 10px rgba(0, 238, 255, 0.7);
    }
    
    .shine {
        position: relative;
        font-size: 1em;
        font-weight: 900;
        color: rgba(255, 255, 255, 0.9);
        background: #222 -webkit-gradient(linear,
                left top,
                right top,
                from(#222),
                to(#222),
                color-stop(0.5, #fff)) 0 0 no-repeat;
        background-image: -webkit-linear-gradient(-40deg,
                transparent 0%,
                transparent 40%,
                #fff 50%,
                transparent 60%,
                transparent 100%);
        -webkit-background-clip: text;
        -webkit-background-size: 50px;
        -webkit-animation: zezzz;
        -webkit-animation-duration: 5s;
        -webkit-animation-iteration-count: infinite;
    }
    
    @-webkit-keyframes zezzz {
        0%,
        10% {
            background-position: -200px;
        }
    
        20% {
            background-position: top left;
        }
    
        100% {
            background-position: 200px;
        }
    }
    
    .menu {
        list-style-type: none;
        margin: 0;
        display: flex;
        justify-content: flex-end;
        align-items: center;
        padding: 0 2rem;
    }
    
    .menu li {
        margin-right: 15px;
        display: flex;
        align-items: center;
    }
    
    .menu li a {
        color: white;
        text-decoration: none;
        font-size: 15px;
        font-weight: 500;
        transition: all 0.3s ease;
        padding: 8px 12px;
        border-radius: 6px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .menu li a:hover {
        color: #0ef;
        background-color: rgba(0, 238, 255, 0.1);
        transform: translateY(-2px);
    }
</style>
</head>

<body>
    <nav class="navbar">
        <a href="#" class="logo">
            <div class="shine">DISEASE DETECTION</div>
        </a>
        <ul class="menu">
            <li>
                <div class="loading">
                    <svg height="48px" width="64px" style="margin-left: -20px;">
                        <polyline id="back" points="0.157 23.954, 14 23.954, 21.843 48, 43 0, 50 24, 64 24">
                        </polyline>
                        <polyline id="front" points="0.157 23.954, 14 23.954, 21.843 48, 43 0, 50 24, 64 24">
                        </polyline>
                    </svg>
                </div>
            </li>
            <li><a href="index.html">HOME</a></li>
            <li><a href="parkinson">Parkinson's</a></li>
            <li><a href="diabetes">Diabetes</a></li>
            <li><a href="heart">Heart</a></li>
            <li><a href="liver">Liver</a></li>
            <li><a href="kidney">Kidney</a></li>
            <li><a href="register">Register</a></li>
            <li><a href="login">Login</a></li>
            
        </ul>
    </nav>
    
    <div class="overlay"></div>
    
    <div class="form-container">
        <div class="login-form">
            <h1>Login</h1>
            <form action="login" method="post">
                
                <div class="form-group">
                    <input type="text" id="username" name="username" class="form-control" placeholder=" " required>
                    <label for="username" class="form-label">Username</label>
                </div>
                <div class="form-group">
                    <input type="password" id="password" name="password" class="form-control" placeholder=" " required>
                    <label for="password" class="form-label">Password</label>
                </div>
                <button type="submit" class="btn-login">Sign In</button>
                <p class="register-text">Don't have an account? <a href="register" class="register-link">Sign Up</a></p>
            </form>
        </div>
    </div>
</body>
</html>