# JavaScript + Star Wars

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

2) Briefly identify why the greet method is not outputting the person's name. Describe at least one way you can fix it to output correctly:

```js
const person = {
  name: "Barbara",
  greet: function() {
    return function reallyGreet() {
      return `Hi, I'm ${this.name}`;
    };
  }
};
person.greet()();
// => Hi, I'm undefined
```

```js
// Your answer here:
```

3. Create a StarWarsCharacter class using ES6 syntax. Characters should have name, species, and home world. Have a quick look at the Star Wars API (https://swapi.co/). Use fetch requests and the SW API to create 10 StarWarsCharacter objects and display their data in the div with id 'star-wars' (you can just grab the first ten people if you like). You may display the data in any html format you wish. You may put all code in the star_wars.js file, or feel free to make your own files if you like.
