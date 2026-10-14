# CSC-340-Assignment-3-CRUD-API
# One Piece Character API
## Description
The One Piece Character API is a REST API built with Java, Spring Boot, Spring Data JPA, and PostgreSQL. It manages characters from the One Piece universe focusing on the Straw Hat Pirates during the Thriller Bark arc. The API supports creating, retrieving, updating, deleting, searching, and filtering character records. Character data is stored in a PostgreSQL database hosted on Neon.

## Character Entity
The entity is named AimeCharacter and maps to the characters database table.

Attribute : Type : Rules 
characterID : Long :  Primary key, automatically generated 
name : String : Required can't be blank 
description : String : Required can't be blank
universe : String : Optional identifies the character's universe 
species : String : Optional identifies the character's species
role : String : Optional identifies the character's role

## API Endpoints
All endpoints use the /api/characters base path.

Method  : Path : Description : Success Status
GET : /api/characters : Retrieve all characters : 200 OK
GET : /api/characters/{id} : Retrieve a character by ID : 200 OK
POST : /api/characters : Create a new character : 201 Created
PUT : /api/characters/{id} : Update an existing character : 200 OK
DELETE : /api/characters/{id} : Delete a character by ID : 204 No Content
GET : /api/characters/filter?universe=One%20Piece : Filter characters by universe : 200 OK  
GET : /api/characters/search?name=brook : Search characters by partial name, ignoring case : 200 OK

### Error Responses
- 400 Bad Request: The request body fails validation, such as when the name or description is blank.
- 404 Not Found: The requested character ID does not exist.
- 500 Internal Server Error: An unexpected server error occurs.

## Example Requests

### Create a Character (POST)
## Path: /api/characters
## Example JSON body:
{
  "name": "Brook",
  "description": "The Straw Hat Pirates musician.",
  "universe": "One Piece",
  "species": "Skeleton",
  "role": "Musician"
}
The server automatically generates the character ID. A successful request returns 201 Created and the created character as JSON.


### Update a Character (PUT)
## Path: /api/characters/9
## Example JSON body:
{
  "name": "Brook",
  "description": "The Straw Hat Pirates musician and a skilled swordsman.",
  "universe": "One Piece",
  "species": "Skeleton",
  "role": "Musician"
}
A successful update returns 200 OK with the updated character. If the ID does not exist the API returns 404 Not Found.

## Deployment
The API is deployed on Render and uses a PostgreSQL database hosted on Neon.

## Live API URL:
Example:  https://one-piece-character-api.onrender.com/api/characters 

### Cold Starts
This project uses a free Render web service. Free services may sleep after a period of inactivity. The first request after the service has been idle can take up to a minute while the service starts again.
