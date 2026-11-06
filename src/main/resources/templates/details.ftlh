<#import "layout.ftlh" as layout>
<@layout.layout title="Character Details">

<div class="character-detail">

    <#if animeChar.imageUrl?? && animeChar.imageUrl?has_content>
        <img src="${animeChar.imageUrl}" alt="${animeChar.name}">
    <#else>
        <img src="/images/Placeholder.jpg" alt="No image available">
    </#if>

    <h1>${animeChar.name}</h1>

    <h2>Character Information</h2>

    <p><strong>ID:</strong> ${animeChar.characterId?c}</p>

    <p><strong>Universe:</strong> ${animeChar.universe!'Not specified'}</p>

    <p><strong>Species:</strong> ${animeChar.species!'Not specified'}</p>

    <p><strong>Role:</strong> ${animeChar.role!'Not specified'}</p>

    <h2>About ${animeChar.name}</h2>

    <p>${animeChar.description}</p>

    <a href="/" class="btn btn-primary">Back to Gallery</a>

    <a href="/characters/${animeChar.characterId?c}/edit"
       class="btn btn-warning">Edit</a>

    <form action="/characters/${animeChar.characterId?c}/delete"
          method="post"
          style="display:inline;"
          onsubmit="return confirm('Are you sure you want to delete this character?');">

        <button type="submit" class="btn btn-danger">Delete</button>

    </form>

</div>
</@layout.layout>