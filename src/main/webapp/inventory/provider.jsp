<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>S.I.B.E.T.</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../assets/img/favicon.png" rel="icon">
  <link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

  <div class="d-flex align-items-center justify-content-between">
    <a href="../index.jsp" class="logo d-flex align-items-center">
      <img src="../assets/img/logo.png" alt="">
      <span class="d-none d-lg-block">S.I.B.E.T.</span>
    </a>
    <i class="bi bi-list toggle-sidebar-btn"></i>
  </div><!-- End Logo -->

  <div class="search-bar">
    <form class="search-form d-flex align-items-center" method="POST" action="#">
      <input type="text" name="query" placeholder="Search" title="Enter search keyword">
      <button type="submit" title="Search"><i class="bi bi-search"></i></button>
    </form>
  </div><!-- End Search Bar -->

  <nav class="header-nav ms-auto">
    <ul class="d-flex align-items-center">

      <li class="nav-item d-block d-lg-none">
        <a class="nav-link nav-icon search-bar-toggle " href="#">
          <i class="bi bi-search"></i>
        </a>
      </li><!-- End Search Icon-->

      <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
        <img src="../assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
        <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
      </a><!-- End Profile Iamge Icon -->

      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
        <li class="dropdown-header">
          <h6>Kevin Anderson</h6>
          <span>Web Designer</span>
        </li>
        <li>
          <hr class="dropdown-divider">
        </li>

        <li>
          <a class="dropdown-item d-flex align-items-center" href="../Users/users-profile.html">
            <i class="bi bi-person"></i>
            <span>Perfil</span>
          </a>
        </li>
        <li>
          <hr class="dropdown-divider">
        </li>

        <li>
          <hr class="dropdown-divider">
        </li>


        <li>
          <hr class="dropdown-divider">
        </li>

        <li>
          <a class="dropdown-item d-flex align-items-center" href="../login.jsp">
            <i class="bi bi-box-arrow-right"></i>
            <span>Sign Out</span>
          </a>
        </li>

      </ul><!-- End Profile Dropdown Items -->
      </li><!-- End Profile Nav -->

    </ul>
  </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

  <ul class="sidebar-nav" id="sidebar-nav">

    <li class="nav-item">
      <a class="nav-link " href="../index.jsp">
        <i class="bi bi-grid"></i>
        <span>Inicio</span>
      </a>
    </li><!-- End Dashboard Nav -->

    <li class="nav-heading">Inventario</li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="/item.html">
        <i class="bi bi-box-seam"></i>
        <span>Productos</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="/category.html">
        <i class="bi bi-tags"></i>
        <span>Categorias</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="type.jsp">
        <i class="bi bi-code-slash"></i>
        <span>Tipo</span>
      </a>
    </li><!-- End Inventory Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="/provider.html">
        <i class="bi bi-building"></i>
        <span>Proveedores</span>
      </a>
    </li><!-- End Inventory Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="/itemProvider.html">
        <i class="bi bi-buildings"></i>
        <span>Proveedor de productos</span>
      </a>
    </li><!-- End Inventory Page Nav -->


    <li class="nav-heading">Perfil</li>

    <li class="nav-item">
      <a class="nav-link collapsed" href="../Users/users-profile.html">
        <i class="bi bi-person"></i>
        <span>Usuario</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="../Users/rols-profile.html">
        <i class="bi bi-person-rolodex"></i>
        <span>Roles</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="../Users/rolPermissions-profile.html">
        <i class="bi bi-person-rolodex"></i>
        <span>Permisos de roles</span>
      </a>
    </li><!-- End Profile Page Nav -->

    <li class="nav-item">
      <a class="nav-link collapsed" href="../Users/permissions-profile.html">
        <i class="bi bi-key"></i>
        <span>Permisos</span>
      </a>
    </li><!-- End Profile Page Nav -->

  </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">

  <div class="pagetitle">
    <h1>Proveedor</h1>
    <nav>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">Inventario</a></li>
      </ol>
    </nav>
  </div><!-- End Page Title -->

  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Proveedor</h5>

      <!-- Table with stripped rows -->
      <table class="table datatable">
        <thead>
        <tr>
          <th>ID</th>
          <th>Compañía</th>
          <th>Información de contacto</th>
          <th>Número de teléfono</th>
          <th>Ciudad</th>
          <th>Dirección</th>
          <th>Opciones</th>

        </tr>
        </thead>
        <tbody>
        <tr>
          <td>1</td>
          <td>JoJo's Ethernet</td>
          <td>IDK </td>
          <td>7777 8888</td>
          <td>Managua</td>
          <td>Sabrá Dios</td>
          <td>
            <a href="/provider-forms/read-provider-form.html">
              <button class="btn btn-primary w-30" type="button">Ver</button>
            </a>
            <a href="/provider-forms/update-provider-form.html">
              <button class="btn btn-secondary w-30" type="button">Editar</button>
            </a>
            <a href="/provider-forms/delete-provider-form.html">
              <button class="btn btn-success w-30" type="button">Eliminar</button>
            </a>
          </td>
          </td>
        </tr>



        </tbody>
      </table>
      <!-- End Table with stripped rows -->

      <a href="/provider-forms/create-provider-form.html">
        <button class="btn btn-primary w-45" type="button">Nuevo</button>
      </a>

      <!-- End Table with hoverable rows -->

    </div>
  </div>


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
  <div class="copyright">
    &copy; Copyright <strong><span>S.I.B.E.T.</span></strong>. All Rights Reserved
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../assets/vendor/chart.js/chart.umd.js"></script>
<script src="../assets/vendor/echarts/echarts.min.js"></script>
<script src="../assets/vendor/quill/quill.js"></script>
<script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="../assets/vendor/tinymce/tinymce.min.js"></script>
<script src="../assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="../assets/js/main.js"></script>

</body>

</html>