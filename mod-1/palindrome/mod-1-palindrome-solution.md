## Palindrome Solution

### Iterative Solution
```ruby
  def palindrome?(str)
    str == str.reverse
  end
```

### Recursive Solution

``` ruby
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
