<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>S.I.B.E.T.</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="./assets/img/favicon.png" rel="icon">
  <link href="./assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="./assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="./assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="./assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="./assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="./assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="./assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="./assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="./assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index.jsp" class="logo d-flex align-items-center w-auto">
                  <img src="././assets/img/logo.png" alt="">
                  <span class="d-none d-lg-block">S.I.B.E.T.</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Inicia sesión en tu cuenta</h5>
                    <p class="text-center small">Ingresa tu correo y contraseña</p>
                  </div>

                  <form class="row g-3" id="loginForm">
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Correo</label>
                      <div class="input-group">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="email" name="username" class="form-control" id="yourUsername" required>
                        <div class="invalid-feedback">Por favor, ingresa un correo válido</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Contraseña</label>
                      <input type="password" name="password" class="form-control" id="yourPassword" required>
                      <div class="invalid-feedback">Por favor, ingresa tu contraseña</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Recordar</label>
                      </div>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Iniciar Sesión</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="./assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="./assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./assets/vendor/chart.js/chart.umd.js"></script>
  <script src="./assets/vendor/echarts/echarts.min.js"></script>
  <script src="./assets/vendor/quill/quill.js"></script>
  <script src="./assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="./assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="./assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="./assets/js/main.js"></script>

  <!-- Custom script for login validation -->
  <script>
    // Wait for the DOM to be ready
    document.addEventListener("DOMContentLoaded", function() {
      // Select form
      const form = document.getElementById("loginForm");
      // Add event listener for form submission
      form.addEventListener("submit", function(event) {
        // Prevent default form submission
        event.preventDefault();
        // Select username and password inputs
        const usernameInput = form.querySelector("[name='username']");
        const passwordInput = form.querySelector("[name='password']");
        // Select invalid feedback elements
        const usernameFeedback = form.querySelector("#yourUsername + .invalid-feedback");
        const passwordFeedback = form.querySelector("#yourPassword + .invalid-feedback");
        // Reset validity
        usernameInput.setCustomValidity("");
        passwordInput.setCustomValidity("");
        // Check if username is empty
        if (!usernameInput.value.trim()) {
          // Set custom validity message
          usernameInput.setCustomValidity("Por favor, ingresa un correo");
          // Display invalid feedback
          usernameFeedback.style.display = "block";
        } else {
          // Hide invalid feedback
          usernameFeedback.style.display = "none";
        }
        // Check if password is empty
        if (!passwordInput.value.trim()) {
          // Set custom validity message
          passwordInput.setCustomValidity("Por favor, ingresa una contraseña");
          // Display invalid feedback
          passwordFeedback.style.display = "block";
        } else {
          // Hide invalid feedback
          passwordFeedback.style.display = "none";
        }
        // Check if form is valid
        if (form.checkValidity()) {
          // Perform form submission (simulated login)
          simulateLogin(usernameInput.value, passwordInput.value);
        }
      });
    });

    // Function to simulate login (replace with actual login logic)
    function simulateLogin(username, password) {
      // Check if username and password match the expected values
      if (username === "correo@test.com" && password === "12345") {
        // Redirect to index.jsp (replace with actual redirection)
        window.location.href = "index.jsp";
      } else {
        // Show alert for invalid credentials (replace with actual error handling)
        alert("Credenciales inválidas. Por favor, inténtalo de nuevo.");
      }
    }
  </script>
</body>

</html>
