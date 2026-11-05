<#import "layout.ftlh" as layout>
<@layout.layout title="About - One Piece Gallery">

<div class="about-section">

    <h2>About the Gallery</h2>

    <img src="https://images5.alphacoders.com/606/606284.jpg"
         alt="One Piece">

    <h2 class="text-center mb-4">
        Welcome to the One Piece Character Gallery!
    </h2>

    <p>
        This website was created to showcase some of the memorable
        characters from the world of One Piece. The gallery focuses
        on characters from the Dressrosa arc and provides information
        about their roles and important characteristics.
    </p>

    <h4>What You Can Find</h4>

    <p>
        The gallery includes information about each character,
        including their role, abilities, species, and other important
        details from the anime. You can browse through the characters
        on the home page and explore additional information about them
        through their detail pages.
    </p>

    <h4>Character Details</h4>

    <p>
        You can visit the detail page for Monkey D. Luffy to learn more
        about his journey, abilities, and goal of becoming the King of
        the Pirates. On the home page, you will also be able to find
        the rest of the Straw Hat crew with their own details.
    </p>

    <h4>How This Application Works</h4>

    <p>
        This application uses Spring Boot for the backend and
        FreeMarker for the frontend. The page controller handles
        website requests and communicates with the service layer.
        The service layer works with the repository, which accesses
        the PostgreSQL database. FreeMarker displays the character
        information retrieved from the database on the website.
    </p>

</div>
</@layout.layout>