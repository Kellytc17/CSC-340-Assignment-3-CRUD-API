<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Character Details </title>
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
    
    .character-detail { 
        background-color: white; 
        border: 2px solid #0b3d91; 
        border-radius: 10px; 
        padding: 30px; 
        margin-top: 30px; 
    } 
    
    .character-detail img { 
        width: 100%; 
        max-width: 600px; 
        height: 350px; 
        object-fit: contain; 
        display: block; 
        margin: 0 auto 25px; 
    } 
    
    h1 { 
        color: #0b3d91; 
        text-align: center; 
        font-weight: bold; 
    } 
    
    h2 { 
        color: #d4a017; 
        margin-top: 25px; 
    } 
    
    p { 
        line-height: 1.7; 
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
                <a class="nav-link" href="about">About</a> 
                <a class="nav-link" href="new-character-form.html">Add a Character</a> 
            </div> 
        </div> 
    </nav> 
    <div class="container"> 
        <div class="character-detail">

    <img src="https://th.bing.com/th/id/OIP.kl2XydyOu7GcQhRskqp1ogHaEK?w=329&h=185&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3" alt="Luffy">

    <h1>${animeChar.name}</h1>

    <h2> About Luffy</h2>/
    <p> ${animeChar.description}</p>

    <h2>Ablilites</h2>
    <p>Luffy ate the Gomu Gomu (Gum Gum) no Mi devil fruit giving his body rubber like properties. He comines this ability with his hand to hand fighting style to create powerful and unique attacks along with his haki.  </p>

    </div>
</div>
</body>
</html>