<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Website Galeri Foto</title>
    <!-- Menggunakan Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.php">Website Galeri Foto</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" 
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse mt-2" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link" href="register.php">Daftar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.php">Masuk</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-md-4">
     <div class="card">
      <div class="card-body bg-light">
       <div class="text-center">
        <h5>Daftar Akun Baru</h5>
       </div>
       <form action="config/aksi_register.php" method="POST">
           <div class="mb-3">
               <label for="username" class="form-label">Username</label>
               <input type="text" id="username" name="username" class="form-control" required>
           </div>
           <div class="mb-3">
               <label for="password" class="form-label">Password</label>
               <input type="password" id="password" name="password" class="form-control" required>
           </div>
           <div class="mb-3">
               <label for="email" class="form-label">Email</label>
               <input type="email" id="email" name="email" class="form-control" required>
           </div>
           <div class="mb-3">
               <label for="namaLengkap" class="form-label">Nama Lengkap</label>
               <input type="text" id="namalengkap" name="namalengkap" class="form-control" required>
           </div>
           <div class="mb-3">
               <label for="alamat" class="form-label">Alamat</label>
               <input type="text" id="alamat" name="alamat" class="form-control" required>
           </div>
           
           <div class="d-grid mt-2">
             <button class="btn btn-primary" type="submit" name="kirim">DAFTAR</button>
           </div>
       </form>
       <hr>
       <p>Sudah punya akun? <a href="login.php">Login di sini!</a></p>
      </div>
     </div>
    </div>
  </div>
</div>

<footer class="d-flex justify-content-center border-top mt-3 bg-light fixed-bottom">
    <div class="container py-2">
        &copy; 2024 Website Galeri Foto. All rights reserved.
    </div>
</footer>

<!-- Menggunakan Bootstrap Bundle yang sudah termasuk Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
