<%@ Page Language="C#" AutoEventWireup="true" CodeFile="youtube.aspx.cs" Inherits="youtube" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouTube</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="front.css" />
    <link rel="icon" href="logo.png" sizes="32x32" type="image/png" />

</head>
<body class="bg-light">
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top border-bottom">
        <div class="container-fluid">
            <div class="d-flex align-items-center">
                <button class="btn btn-link text-dark me-3">
                    <i class="bi bi-list fs-4"></i>
                </button>
                <a class="navbar-brand d-flex align-items-center" href="youtube.aspx">
                    <%--<img src="youtube.png" height="50" />--%>
                    <i class="bi bi-youtube" style="color:red; font-size:30px;"></i>
                    <span class="px-2" style="color:;font:25px bolder;">YouTube</span>
                </a>
            </div>

            <div class="d-flex flex-grow-1 justify-content-center max-width-xl">
                <form class="d-flex flex-grow-1" style="max-width: 600px;">
                    <div class="input-group">
                        <input type="search" class="form-control rounded-start-pill" placeholder="Search">
                        <button class="btn btn-light border rounded-end-pill px-4" type="submit">
                            <i class="bi bi-search"></i>
                        </button>
                    </div>
                </form>
            </div>

            <div class="d-flex align-items-center gap-3">
                <button class="btn btn-link text-dark">
                    <i class="bi bi-camera-video fs-5"></i>
                </button>
                <button class="btn btn-link text-dark">
                    <i class="bi bi-bell fs-5"></i>
                </button>
                <button class="btn btn-link text-dark">
                    <i class="bi bi-person-circle fs-5"></i>
                </button>
            </div>
        </div>
    </nav>

    <!-- Sidebar -->
    <div class="sidebar bg-light border-end p-3">
        <div class="nav flex-column">
            <a href="#" class="nav-link active mb-1">
                <i class="bi bi-house-door me-3"></i>
                Home
            </a>
            <a href="#" class="nav-link text-dark mb-1">
                <i class="bi bi-collection-play me-3"></i>
                Subscriptions
            </a>

            <hr class="my-3" style="color:snow;">

            <a href="#" class="nav-link text-dark mb-1">
                <i class="bi bi-journal-album me-3"></i>
                Library
            </a>
            <a href="#" class="nav-link text-dark mb-1">
                <i class="bi bi-clock-history me-3"></i>
                History
            </a>
            <a href="#" class="nav-link text-dark mb-1">
                <i class="bi bi-play-btn me-3"></i>
                Your Videos
            </a>
        </div>
    </div>
    <!-- Main Content -->
    <main class="main-content">
        <div class="container-fluid p-4 row g-4">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <div class="col-12 col-md-4 col-lg-4">
                        <div class="card video-card border-0">
                            <video controls class="card-img-top video-thumbnail" style="height: 200px; width: 300px;">
                                <source src='<%# ResolveUrl(Eval("video").ToString()) %>' type="video/mp4">
                                Your browser does not support the video tag.
                            </video>
                            <div class="card-body px-2 py-3">
                                <h6 class="card-title mb-1"><%# Eval("title") %></h6>
                                <p class="card-text text-muted small mb-1"><%# Eval("chname") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
