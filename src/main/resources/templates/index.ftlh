<#import "layout.ftlh" as layout>
<@layout.layout title="One Piece Character Gallery">

    <p class="text-center mb-4">
        Explore some of the most memorable characters from the world of One Piece.
    </p>
    
    <form action="/" method="get" class="mb-4">
        <div class="row g-2">
            <div class="col-md-5">
                <label for="name" class="form-label">Search by name</label>
                <input
                    type="text"
                    class="form-control"
                    id="name"
                    name="name"
                    placeholder="Enter character name..."
                    value="${name!''}">
            </div>

            <div class="col-md-5">
                <label for="role" class="form-label">Search by role</label>
                <input
                    type="text"
                    class="form-control"
                    id="role"
                    name="role"
                    placeholder="Enter a role..."
                    value="${role!''}">
            </div>

            <div class="col-md-2 d-flex align-items-end">
                <button type="submit" class="btn btn-primary w-100">
                    Search
                </button>
            </div>
        </div>
    </form>

    <h1 class="text-center mb-4">Characters</h1>

    <div class="row">
        <#if characters?has_content>

            <#list characters as character>
                <div class="col-md-3 mb-4">
                    <div class="card h-100">

                        <#if character.imageUrl?? && character.imageUrl?has_content>
                            <img
                                src="${character.imageUrl}"
                                class="card-img-top character-img"
                                alt="${character.name}">
                        <#else>
                            <img
                                src="/images/Placeholder.jpg"
                                class="card-img-top character-img"
                                alt="No image available">
                        </#if>

                        <div class="card-body">
                            <h3 class="card-title">${character.name}</h3>

                            <p><strong>Universe:</strong> ${character.universe!''}</p>
                            <p><strong>Role:</strong> ${character.role!''}</p>
                            <p><strong>Species:</strong> ${character.species!''}</p>

                            <p>${character.description!''}</p>

                            <a href="/characters/${character.characterId}"
                               class="btn btn-primary mt-auto">
                                View Details
                            </a>
                        </div>

                    </div>
                </div>
            </#list>

        <#else>
            <p class="text-center">No characters found. Try another search.</p>
        </#if>
    </div>
</@layout.layout>