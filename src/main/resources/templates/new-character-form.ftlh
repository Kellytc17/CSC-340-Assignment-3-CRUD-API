<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a Character</title>

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

        .character-form {
            background-color: white;
            border: 2px solid #0b3d91;
            border-radius: 10px;
            padding: 30px;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        h1 {
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
            border-color: #082f70;
        }

        .form-control {
            border: 2px solid hsl(0, 2%, 25%);
        }
</style>

</head>
<body>
    <nav class="navbar navbar-expand-lg custom-navbar mb-4">
    <div class="container">
        <a class="navbar-brand text-white" href="index.html">One Piece Gallery</a>

        <div class="navbar-nav">
            <a class="nav-link" href="index.html">Home</a>
            <a class="nav-link" href="details.html">Details</a>
            <a class="nav-link" href="about.html">About</a>
            <a class="nav-link" href="new-character-form.html">Add a Character</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="character-form">

    <h1>Add a New Character</h1>

    <p>
        Want to add another character to the gallery? Fill out the form below.
    </p>

    <form>

        <div class="mb-3">
            <label for="name">Character Name:</label>
            <input type="text" id="name" name="name">
        </div>    
        
             <div class="mb-3">
                <label for="universe" class="form-label">Universe:</label>
                <input type="text" class="form-control" id="universe" name="universe">
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">Role:</label>
                <input type="text" class="form-control" id="role" name="role">
            </div>

            <div class="mb-3">
                <label for="image" class="form-label">Image URL:</label>
                <input type="url" class="form-control" id="image" name="image">
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Short Description:</label>
                <textarea class="form-control" id="description" name="description" rows="5"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">
                Add Character
            </button>

        </form>

    </div>

</div>
</body>
</html>