# Palindrome Syndrome

### Introduction
A palindrome is a word, phrase, or sequence that reads the same backwards and forwards.

### Problem Statement
Write out the method palindrome?() that takes in a string as an argument and determines whether that string is a palindrome.

### Example

* palindrome?("racecar") gives a boolean output of **true** because "racecar" is a palindrome.
* palindrome?("flatiron") gives a boolean output of **false** because "flatiron" is not a palindrome.

What would the output for the following strings be?
* palindrome?("noon")
* palindrome?("five")
* palindrome?("radar")
* palindrome?("learnlovecode")


// Solution:

```ruby
def palindrome?(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome?(string[1..-2])
    else
      false
    end
  end
end
```
