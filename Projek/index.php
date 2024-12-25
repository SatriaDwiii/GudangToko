
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Reset CSS */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }


        body {
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container buat login */
        .login-container {
            width: 400px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
        }


        .login-header h1 {
            color: #387478;
            font-size: 36px;
            margin-bottom: 10px;
        }

        .login-header p {
            font-size: 16px;
            color: #606770;
            margin-bottom: 20px;
        }

        /* Buat Form */
        .login-form input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #dddfe2;
            border-radius: 6px;
            font-size: 14px;
        }

        .login-form button {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            color: white;
            cursor: pointer;
        }

        .login-form button[type="submit"] {
            background-color: #629584;
        }

        .login-form a {
            display: block;
            margin-top: 10px;
            color: #387478;
            text-decoration: none;
            font-size: 14px;
        }

        .login-form a:hover {
            text-decoration: underline;
        }

        hr {
            border: none;
            border-top: 1px solid #dddfe2;
            margin: 20px 0;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <?php
    include "koneksi.php";

    if(isset($_POST['login'])){
        $username = $_POST['username'];
        $password = $_POST['password'];
        
        $sql = "SELECT * FROM akun WHERE 
        username='$username' AND password='$password'";

        $result = $conn->query($sql);

        if($result->num_rows > 0){
            $data =  $result->fetch_assoc();
            
            echo "<script> document.addEventListener('DOMContentLoaded', (event) => {
            Swal.fire({
            title: 'Login Berhasil',
            icon: 'success',
            draggable: true
            }).then(() => {
                    window.location.href = 'dashboard.php';
                }); 
            });</script> ";
        } else {
            echo "<script> document.addEventListener('DOMContentLoaded', (event) => {
                Swal.fire({
                title: 'Koe Sapa Su',
                icon: 'error',
                draggable: true
                });
                });</script> ";
        } 
    }
?>
</head>
<body>
    <form action="" method="POST">
        <div class="login-container">
            <div class="login-header">
                <h1>WARUNG INDARTI</h1>
                <p>Masuk untuk akses warung.</p>
            </div>
            <div class="login-form">
                <form>
                    <input type="text" id="username" name="username" placeholder="Username" required>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <button type="submit" name="login">Log In</button>
                    <hr>
                </form>
            </div>
    </form>
</body>
</html>