// Here is one possible solution.  If time, open up a discussion here.
// What other ways did students organize code?
// What other ways of organizing this code are there?
// Which is better and why?
// Critical thinking:  why is the callback for addEventListener written this way?
// What would happen if we just tried put in `init`?
document.addEventListener("DOMContentLoaded", () => init());

const allCharacters = [];
let starWarsDiv;

class StarWarsCharacter {
  constructor(name, birthYear, homeWorld) {
    this.name = name;
    this.birthYear = birthYear;
    this.homeWorld = homeWorld;
    allCharacters.push(this);
  }
}

init = () => {
  starWarsDiv = document.getElementById("star-wars");
  fetchCharacters();
};

fetchCharacters = () => {
  fetch("https://swapi.co/api/people/")
    .then(response => response.json())
    .then(jsonData => createCharacters(jsonData.results));
};

createCharacters = data => {
  data.forEach(
    character =>
      new StarWarsCharacter(
        character.name,
        character.birth_year,
        character.homeworld
      )
  );
  addCharactersToDOM();
};

addCharactersToDOM = () => {
  allCharacters.forEach(character => {
    htmlString = `<h4>${character.name}</h4>
      <ul>
        <li>born: ${character.birthYear}</li>
        <li>homeworld: ${character.homeworld}</li>
      </ul>`;
    starWarsDiv.innerHTML += htmlString;
  });
};
