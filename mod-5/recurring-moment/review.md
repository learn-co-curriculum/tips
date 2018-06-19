## Reviewing the challenge

1. Give a little context about the challenge.
- This is borrowed from a real interview question
- The class is a recurring moment, something like a recurring calendar event
- it lets you represent a series of dates

2. Ask students to shout out the first two bugs
- this should go quickly
- the order doesn't matter
Bugs:
a. weeks and months were swapped
b. the loop boundary should be a <= not a <


3. Dive in to the more subtle bug
This one is genuinely more difficult, it's okay if you didn't get it in the time. An interviewer might help guide you toward the right answer.

The key is that you use demonstrate that you can use the debugging tools (puts, pry) to check your assumptions as you work.

The third bug comes from a false assumption. Adding dates doesn't work exactly as you expect. In particular, adding multiple months at once is different from adding them one at a time. E.g.

```
Jan 31 + 1 month = Feb 28
Feb 28 + 1 month = March 28
Jan 31 + 2 months = March 31
```

This branch has a solution in `recurring_moment.rb` where instead of adding a date at each step, we add to a counter and do our multiplication in integer space, where it's safe. That's not the only solution - give space for students to share other solutions that they came up with.

## Bonus

Match is O(the number of periods between the start and the target)

It could be improved a few ways, along different metrics:

- improved speed / algorithmic improvements
- added functionality (match dates in the past, fixed number of occurrences, generate list of n occurrences)
- better readability / developer friendliness

(probably others)

There are a few ways to improve the runtime - they mostly involve skipping over some dates to land somewhere closer to the target, then narrowing in. Think 'binary search over the possible dates that this recurrence represents' or 'something like date multiplication, followed by checking nearby dates'.

Some version like

```ruby
def advance_n_periods(date, n)
  if @period == 'monthly'
    date.advance(months: @interval * n)
  elsif @period == 'weekly'
    date.advance(weeks: @interval * n)
  elsif @period == 'daily'
    date.advance(days: @interval * n)
  end
end

def match_fast(target)
  step_size = 1000 # hand-tune starting step size
  lower_bound = @start
  current = @start

  while step_size >= 1
    i = 0
    while current <= target
      if current == target
        return true
      end

      lower_bound = current
      current = advance_n_periods(@start, i * step_size)
      i += 1
    end
    current = lower_bound # narrowing in on the solution
    step_size = step_size / 2 # will stay an integer
  end

  return false
end
```

Another strategy that might be worth mentioning is to trade memory for compute by precomputing matching dates and looking up the target in a Set (or hash or similar). The question then is how many to generate, which might depend on the use case. This method works well with some kind of memoization / batching the precompute whenever it's needed.
