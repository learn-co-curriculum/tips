Sample mod 4 code challenge

Please complete the 3 instructions below. You have (20) min.

1. In what order will the numbers 1-4 be logged to the console when the code below is executed? Why?

   ```js
   (function() {
     console.log(1);
     setTimeout(function() {
       console.log(2);
     }, 1000);
     setTimeout(function() {
       console.log(3);
     }, 0);
     console.log(4);
   })();
   ```

   ```js
   // Your answer here:
   ```

2) Describe two ways you can fix the following greet method to output correctly:

```js
const person = {
  firstName: "bob",
  greet: function() {
    return function reallyGreet() {
      return `Hi, I'm ${this.firstName}`;
    };
  }
};
person.greet()();
// Hi, I'm undefined
```

```js
// Your answer here:
```

3. Create a StarWarsCharacter class using ES6 syntax. Characters should have name, species, and home world. Have a quick look at the Star Wars API (https://swapi.co/). Use fetch requests and the SW API to create 3 StarWarsCharacter objects and display their data in the div with id 'star-wars' (you can just grab the first three people if you like). You may display the data in any html format you wish. Put all code in the star_wars.js file.
