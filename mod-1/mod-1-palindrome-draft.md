Write a method that determines whether a word is a palindrome without using the reverse method.

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
