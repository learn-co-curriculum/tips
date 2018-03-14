## First Steps to Approaching the Problem
When approaching this type of problem, it is important to first look at all the information provided. There may be small hints in the instructions for how to tackle solving this problem.

For example, we know this word must be the same forwards and backwards which means we will have to do some type of conditional check. Furthermore, we know that the method is expecting a boolean as an output, which means we could use the `==` operator to check whether the string is the same forwards and backwards.

Knowing that Ruby has a good deal of built in methods, we could first google how to get the **backwards** version of a string, considering that the instructions explicitly say the string should be the same forward and backwards. Knowing those key points, we could google something along the lines of "ruby string backwards". The search returns links which inform us that there is a build in method `.reverse` that can reverse every letter in a string.

With this information, I know I want to do a comparison between the original string being passed in as an argument as well as the reverse version of the string. Saying that out in layman's terms makes it a simple approach to code.

## The Difference Between an Iterative and Recursive Solution

Iterative and recursive solutions perform the same tasks but there is a difference in the approach.

*Iterative* solutions will keep repeating until a task is done.

*Recursive* solutions will break up a large problem into smaller pieces until it can be solved, then combine all the results.

## Deciding Between a Recursive and Iterative Solution

At times, it will be more appropriate to use an iterative solution as opposed to a recursive one. For recursive solutions, function calls must be stored in a stack and memory will need to be allocated to implement scope isolation. Recursion can be considered more expensive due to the amount of time it will take to reach the solution as well as the fact that a stack frame must be created, which means a larger memory footprint.

Some algorithms will be hard to solve iteratively, in which case it will make more sense to break it up into smaller, more digestible parts. 
