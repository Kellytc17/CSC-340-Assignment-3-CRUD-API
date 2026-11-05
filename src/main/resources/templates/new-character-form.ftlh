<#import "layout.ftlh" as layout>
<@layout.layout title="Add a Character">

    <div class="character-form">

        <h1>Add a New Character</h1>

        <p class="intro-text">
            Want to add another character to the gallery?
            Fill out the form below.
        </p>

        <form action="/characters" method="post">

            <div class="mb-3">
                <label for="name" class="form-label">Character Name:</label>
                <input type="text"
                       class="form-control"
                       id="name"
                       name="name"
                       required>
            </div>

            <div class="mb-3">
                <label for="universe" class="form-label">Universe:</label>
                <input type="text"
                       class="form-control"
                       id="universe"
                       name="universe">
            </div>

            <div class="mb-3">
                <label for="role" class="form-label">Role:</label>
                <input type="text"
                       class="form-control"
                       id="role"
                       name="role">
            </div>

            <div class="mb-3">
                <label for="species" class="form-label">Species:</label>
                <input type="text"
                       class="form-control"
                       id="species"
                       name="species">
            </div>

            <div class="mb-3">
                <label for="imageUrl" class="form-label">Image URL:</label>
                <input type="url"
                       class="form-control"
                       id="imageUrl"
                       name="imageUrl">
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Short Description:</label>
                <textarea class="form-control"
                          id="description"
                          name="description"
                          rows="5"
                          required></textarea>
            </div>

            <button type="submit" class="btn btn-primary">
                Add Character
            </button>

        </form>

    </div>
</@layout.layout>