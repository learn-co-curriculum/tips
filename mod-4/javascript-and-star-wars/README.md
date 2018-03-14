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

3. Create a Book class using ES6 syntax. Books should have title, author, and category. Have a quick look at the Google Books API (https://developers.google.com/books/docs/v1/using). Use `fetch` to get data from the API, and use the response to create 5 Book objects and display their data in the div with id 'books' (you can use whatever topic query you like). You may display the data in any html format you wish. Put all code in the books.js file.
