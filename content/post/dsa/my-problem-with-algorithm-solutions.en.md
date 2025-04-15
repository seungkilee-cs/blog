+++
date = '2025-04-07T10:29:28+09:00'
draft = true
title = 'My Problem With Algorithmic Solutions Vods and Posts'
summary = 'The wrong question that is asked and answered in algorithmic explanations'
+++

# My Problem with Current State of Algorithmic Solutions on the Web

You shouldn't memorize the name of the town you want to get to - you should memorize the road to it. But this is about "how" not "why."

## Format of a Typical Algorithmic Solutions You See on the Web

They start by problem analysis, and constraints. Then they say this is the algorithm they will use, and implement the solution.

This is a really big problem. This is like watching a tutorial. It explains what to do and why it works, but it doesn't show you anything useful

## The wrong question - Why

Why is inherently answered with tautological expressions. When everything is spelled out, of course it makes sense - because it is tautology. The problem was never "it doesn't make sense." The problem was that you didn't know to take that path and make that choice given the problem. This is the key of problem solving. You didn't think of that solution, not because you didn't understand why it worked, you didn't think of that solution because you never even thought to take that path. Just because you understand why something works, why do you think you would be able to recreate it when the question changes?

## Problem of Why

I feel like I understand why they work, but for me, the difficult part of understanding a different approach is never "why it works." Rather, I find that I need to figure out the spirit of why the approach was chosen, or "how did you decide to use that approach / what made you think to use that technique/approach."

I am a student of economics and self taught philosophy student. There's slight philosophical nuance that I am invoking here to my difference in questions, and why I should never ask WHY to others but how and what.

- Why is inherently tautological (I think Nietzche said this when he was describing genealogy of ethics) to answer. Everything will make sense within the given logic system (in this case, explaining why the approach that solves the problem is valid solution for the problem - this is inherently tautological because every step is logically transitive)
- So when someone explains why something works there's a critical flaw in that because we already know that the solution works. Explaining why GIVEN that we know the solution working, is completely different from proving or explaining the why WITHOUT the guarantee and establishedness of the solution working.
- Therefore, that's why I didn't ask you why the solution works, but I figured it out myself. Because WHY is always tautological, you cannot ask other person for WHY something works. You have to ask that yourself and figure it out yourself, otherwise the learning, which happens when you try an approach and solution WITHOUT having established that the solution works, is void. You only copy the computed and processed outcome of someone else's work, so you can't derive that yourself.
- I believe if I am understanding the solution, I not only need to recall it, but I need to be able to derive it from the problem statement. This is why I didn't ask you "why does this work" but "what cues are there for me to know to see this problem as weighted graph shortest path finding or connected component or cycle detection problem?" because I knew those were the usecases of Dijkstra's and DSU
- So I always need to know "HOW" one can derive that approach and arrive there. "WHAT" hints or cues you to view this problem like that and approach it? This in my opinion, is the heart of problem solving and "understanding" a solution. If I ask "why" this works, I'm depriving myself of opportunity to actually ask why myself and figure it out. The only help I need and should get is "how" someone else approached this problem that way when I didn't. "what" did they see that led them down that path when I didn't see that?

So this is my understanding of what it means to solve a problem and understand a solution. I'm not sure if it makes sense or is actually working, but for me (again, a software engineer with background in economics, math, and philosophy) this seems like the best and only right way to approach understanding a problem and solution.

## Real way to approach algorithmic Solutions

- Show your thoughts and observations and intution: show what part of the problem was a "cue" for you to think a specific approach. List that. Let that be a lesson for others who didn't think of your way.
- List out the brute force / human / heuristic way of solving the problem, and analyze the complexity or explain why the approach doesn't always work for edge cases: this shows how you develop a solution, from how you would do it to how the computer should do it.
- Write out the test case explicitly (minimally) for edge cases: Tests are how you think about your code.
- List out more than one possible ways of approaching the problem, then show why you are choosing specific way: If you don't consider other options, that means you know one way to do it and only one way. This signals exposure and memorization, not problem solving.
- Write out steps of developing your solution: No one will write code from top to bottom. You write parts, then go back up somewhere cuz you realize you need that hash map or that you need extra global variable
- Add debug statements to make sure the parts of the output are aligning with your idea
- Analyze the final complexity, with actual asymptotic analysis: if you have 2 forloops, it is O(2n). if you have 3 variables to track a global var, that is O(3). Show that you understand the parts, then reduce it later. For instance, if you are using 1 hash set to store values for Leetcod 36. Valid Sudoku, explain the overhead of storing and updating hash set of a tuple of 3 strings (actually explain the byte by byte overhead). And why it might be preferable to having 3 separate sets.
- Walk through your test cases
