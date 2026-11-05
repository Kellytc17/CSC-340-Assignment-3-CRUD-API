<#macro layout title>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f4f8fb;
        }

        .custom-navbar {
            background-color: rgb(28, 28, 143);
        }

        .navbar .nav-link {
            color: #ffffff !important;
        }

        .navbar-brand {
            color: #ffffff !important;
        }

        .character-form {
            background-color: white;
            border: 2px solid #0b3d91;
            border-radius: 10px;
            padding: 30px;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .character-form h1 {
            color: #0b3d91;
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .intro-text {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-label {
            font-weight: bold;
            color: #0b3d91;
        }

        .btn-primary {
            background-color: #0b3d91;
            border-color: #0b3d91;
        }

        .btn-primary:hover {
            background-color: #082f70;
            border-color: #0b3d91;
        }

        .form-control {
            border: 2px solid hsl(0, 2%, 25%);
        }


    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg custom-navbar mb-4">
        <div class="container">
            <a class="navbar-brand" href="/">One Piece Gallery</a>

            <div class="navbar-nav">
                <a class="nav-link" href="/">Home</a>
                <a class="nav-link" href="/about">About</a>
                <a class="nav-link" href="/characters/new">Add a Character</a>
            </div>
        </div>
    </nav>

    <div class="container">

        <#if message??>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
            </div>
        </#if>

        <#nested>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
</#macro>