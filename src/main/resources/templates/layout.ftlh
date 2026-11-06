<#macro layout title>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/style.css">

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