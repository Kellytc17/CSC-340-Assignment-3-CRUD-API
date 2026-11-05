<#import "layout.ftlh" as layout>
<@layout.layout title="Character Not Found">

<div class="text-center">
    <h1>Character Not Found</h1>

    <p>
        ${errorMessage!"The character you are looking for could not be found."}
    </p>

    <a href="/" class="btn btn-primary">Back to Gallery</a>
</div>

</@layout.layout>