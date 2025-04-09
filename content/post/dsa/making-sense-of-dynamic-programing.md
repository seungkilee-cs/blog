+++
date = "2025-03-28T20:34:35+09:00"
draft = false
categories = ["DSA", "Programming", "Technical", "Explanation"]
tags = ["Leetcode", "Dynamic Programming", "DSA", "English"]
title = "Making Sense of Dynamic Programming"
summary = "Why Dynamic Programming is pedantic, and why it has to be"
+++

# Making Sense of Dynamic Programming: Taming the Algorithmic Beast

Dynamic Programming (DP). The very words can send shivers down the spine of even seasoned software engineers. It’s that topic, often relegated to late-night study sessions before coding interviews, that feels both ubiquitous and utterly elusive. DP is the invert a binary tree on steroids: a concept you’re forced to learn and regurgitate, despite its near-zero relevance to your day-to-day job. It’s the algorithmic equivalent of a rite of passage, a hazing ritual that leaves you questioning its practicality. Honestly, inverting a binary tree would be more relevant to a programmer's day-to-day job compared to any kind of Dynamic Programming problem as you might actually stare at the tree of states maintained for your source control, attempting to revert a bad merge. Not actually saying that inverting a binary tree will help you there, but I'm saying it's at least nominally relevant. The only way DP is relevant to your life if that it feels like you are getting sticked from both ends while working on those interview questions. Yet here we are, begrudgingly learning DP because it’s the gatekeeper to proving our worth as developers. The question then arises: can we make sense of this beast, or are we doomed to forever parrot textbook definitions? Let's dive in.

## My DP Question: Explain Dynamic Programming to Me Like I Am a Software Engineer

As an interviewer, I’ve given interviews and received interview. When I was giving interviews for some senior engineer positions, I often posed the question: "Explain Dynamic Programming to me like I am a Software Engineer." This threw a lot of the people off, although that wasn't my intention. Notice the subtle, but critical caveat: I don’t want them to dumb it down as if I’m talking to a five-year-old, no sir. I’m looking for a technical explanation, one that assumes I’m an adult software engineer who simply hasn’t grasped the core principles of DP yet. Because this gives me a full grasp of your understanding on the topic.

The problem is, that most candidates stumble, invariably resorting to buzzwords like “overlapping subproblems” and “optimal substructure,” mechanically reciting patterns they’ve memorized for the Fibonacci sequence or the Knapsack problem without truly understanding the underlying mechanics.

This is akin to using Schrödinger's cat to explain principle of uncertainty—it’s an intuitive analogy for us "normies" who don't really need to understand the full depth of the topic, but because of that, it ultimately obscures the deeper, often counter-intuitive realities. Similarly, these surface-level explanations of DP fail to capture its essence and reduce it to your extremely narrow scoped pattern recognition skills. So, let’s cut through the noise and get to the heart of what DP truly represents.

### Say "Overlapping Subproblem" One More Time

Recall the movie _Hancock_, where Will Smith, with a simmering menace, dares someone to, “Call me an asshole one more time.” That’s precisely the feeling I get when someone reflexively throws out “overlapping subproblems” as their opening gambit in explaining DP. I want to do what Hancock did to those criminals to the interviewee. Maybe not that exact thing, but equally violent.

Yes, it’s technically accurate, but it’s hardly the defining characteristic. It’s merely one piece of a much larger, more intricate puzzle. If anything, DP in practice focuses more on _optimal substructure_—the computation of states based on previously solved ones. This is what builds the dynamicity in DP. Overlapping subproblems are merely a symptom of certain problems suited for DP; they’re not the defining feature. The real question then becomes: how do we exploit this optimal substructure to arrive at an efficient solution?

### The Problem with Buzzwords

The standard approach to explaining DP often revolves around familiar examples like Fibonacci sequences or the 0/1 Knapsack problem. While these are excellent illustrations of how DP works in practice, they frequently fail to convey _why_ it works. Developers often default to terms like “memoization” and “tabulation,” treating them as incantations rather than understanding them as specific optimization _techniques_.

Using Schrödinger's cat as an analogy again: just because something sounds intuitive doesn’t mean it’s accurate or even particularly helpful. Similarly, relying on buzzwords and rote memorization can lead to a brittle understanding of DP, prone to cracking under the slightest pressure.

## Deconstructing Dynamic Programming

So, if DP isn't just about memorizing patterns and regurgitating buzzwords, what _is_ it?

### A Precise Definition of Dynamic Programming

So, here is a generally precise definition of DP provided by Yours Truly here. At its core, Dynamic Programming can be rigorously defined as:

> A set of techniques used to represent linearly dependent states in order to avoid explicit tracking of full range of variables involved and redundant computation, thereby reducing asymptotically irreducible complexity into computationally reducible complexity in problem-solving.

This definition highlights the critical feature of DP: its ability to efficiently manage dependencies between states, optimizing computational processes. This isn't just about solving problems; it's about elegantly sidestepping computational quagmires.

### The Key Principles of DP

Let's dissect the key principles of DP, avoiding, as much as possible, the well-worn clichés. These specifically helped me understand DP much better than parroting "Overlapping Subproblems" for the hundredth time:

1.  **State Representation**: At its heart, DP revolves around the concept of _state_. A state encapsulates all the necessary information required to solve a given subproblem. Consider the Fibonacci sequence: F(n) represents the nth term, encapsulating the solution to the subproblem of finding that term. [note: Add more applicable examples here]

2.  **Linear Dependency**: States are frequently linearly dependent on previous states, meaning the solution to a current state relies directly on the solution of preceding states. For example, the recursive definition F(n) = F(n-1) + F(n-2) elegantly demonstrates this principle, where each state builds directly upon the solution to the prior two. [note: add more applicable examples here, especially real world examples]

3.  **Avoiding Redundancy**: The true power of DP lies in its ability to avoid redundant computations. Rather than recalculating F(n-1) multiple times (as a naive recursive implementation would), DP cleverly stores intermediate results (e.g., caching F(n-1)) and reuses them as needed.

4.  **Reduction of Complexity**: By structuring solutions around states and their dependencies, DP has the remarkable ability to transform problems with exponential complexity into those solvable in polynomial-time. This dramatically reduces the computational resources required, making previously intractable problems feasible. [note: add more examples of logically irreducible steps and the computational optimiazaionts]

### Why "Overlapping Subproblems" Isn’t Enough For Me

The term “overlapping subproblems” is often bandied about as if it, in and of itself, defines DP. However, it's crucial to recognize that this is merely a _characteristic_ of problems that are amenable to DP, not its defining quality. The real challenge lies in devising a method to efficiently _compute_ these overlapping subproblems by cleverly using cached states.

Similarly, “optimal substructure” simply acknowledges that a given problem can be decomposed into smaller, self-similar subproblems; it doesn’t, in itself, provide any insight into how to effectively solve them using DP techniques.

## How is Cache Dynamic?

When I first encountered Dynamic Programming (DP), I couldn’t help but ask, “Why is DP called dynamic? How is storing values in a statically sized array dynamic at all?” This question lingered for years because no one seemed to address it directly in school. The answer doesn’t lie in the storage mechanism—it’s not about the array or memory allocation. The dynamic nature of DP comes from the evolution of the _state_.

### Dynamicity in the State

What’s truly dynamic in Dynamic Programming (DP) is the state itself. As we progress through solving a problem, each new state depends on the output of prior states. This dependency chain is what makes DP dynamic. The static array or cache merely acts as a storage mechanism for these evolving states, holding intermediate results to avoid redundant computations.

Let’s move beyond Fibonacci and explore a more illustrative example: Leetcode 62, "Unique Paths." This problem asks how many distinct paths exist from the top-left corner to the bottom-right corner of a grid, moving only down or right. Here’s how DP applies:

- **Base Case**: If either dimension of the grid is 1 (e.g., a single row or column), there’s only one path.
- **Recursive Case**: For any cell `(i, j)`, the number of paths to reach it equals the sum of paths from `(i-1, j)` (above) and `(i, j-1)` (left).

#### Memoization Optimized Recursion

Using memoization, we recursively calculate paths while caching intermediate results. The cache tracks the number of paths for each cell `(i, j)`. Specifically, `memo[(i, j)]` stores the total number of distinct paths to reach cell `(i, j)` from the starting point `(0, 0)`. This ensures that repeated calls for the same cell retrieve precomputed values instead of recalculating them.

```python
def uniquePaths(m, n):
    memo = {}
    def dp(i, j):
        if i == 0 or j == 0:
            return 1
        if (i, j) not in memo:
            memo[(i, j)] = dp(i - 1, j) + dp(i, j - 1)
        return memo[(i, j)]
    return dp(m - 1, n - 1)
```

Each entry in `memo` explicitly tracks the total number of paths to a specific cell `(i, j)` based on recursive computations. The cache is essentially a dictionary mapping coordinates to their computed path counts.

#### 2D DP Array

In this approach, we use a 2D array `dp[i][j]`, where `dp[i][j]` holds the number of paths to cell `(i, j)`. Unlike memoization's on-demand computation strategy, here we iteratively fill the table row by row or column by column. Each entry represents the cumulative result derived from its neighbors: `dp[i-1][j]` (above) and `dp[i][j-1]` (left).

```python
def uniquePaths(m, n):
    dp = [[1] * n for _ in range(m)]
    for i in range(1, m):
        for j in range(1, n):
            dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
    return dp[m - 1][n - 1]
```

Here’s what each cell `dp[i][j]` explicitly tracks:

- It represents the total number of distinct paths to reach cell `(i, j)` from `(0, 0)`.
- The computation for `dp[i][j]` relies solely on its immediate neighbors: `dp[i-1][j]` and `dp[i][j-1]`.

The distinction lies in how states are built iteratively rather than recursively. The entire table is precomputed bottom-up.

#### 1D DP Array

For space optimization, we reduce dimensions by using a single array `dp[j]`, which represents the current row’s state. As we traverse rows iteratively, we update this array in place. Each entry `dp[j]` tracks the number of paths to column `j` in the current row.

```python
def uniquePaths(m, n):
    dp =[1] * n
    for i in range(1, m):
        for j in range(1, n):
            dp[j] += dp[j - 1]
    return dp[-1]
```

Explicitly:

- In this approach, `dp[j]` represents the cumulative number of paths to column `j` in the current row.
- The update rule `dp[j] += dp[j - 1]` combines results from the previous column (`dp[j-1]`) with results already stored at this column (`dp[j]`).

The reduction from a full 2D table to a single array highlights how DP can optimize memory usage while preserving correctness.

### Why Optimal Substructure Is Hard

The distinction among memoization recursion (`memo[(i,j)]`), 2D DP (`dp[i][j]`), and 1D DP (`dp[j]`) underscores what "optimal substructure" truly means. Optimal substructure implies that solving smaller subproblems independently leads to solving larger problems optimally. However:

- **Memoization** dynamically tracks states during recursive calls but requires careful handling of dependencies.
- **2D DP** precomputes all states iteratively but demands explicit storage for every intermediate result.
- **1D DP** optimizes space but forces us to rethink how dependencies propagate across rows and columns.

So this is the painful part of DP. Optimal Substructure are really, really hard to understand and define, because it requires us to define clear relationships between subproblems and ensure that these relationships propagate correctly across different dimensions or levels of computation. Can you easily visualize how each cell in 2D DP Array corresponds to all possible ways of getting to that cell, and could you see how that means you can actually compute the same thing in 1D Array as long as you can set up the relationships correctly? Yeah, this is less of logical approach but pure mathematical intuition or pattern recognition from exposure. That's why this is hard. You have to do math, and a lot more than you would like to.

### Implicit State Handling

DP automates state tracking through its caching mechanism. In recursion alone, state transitions are implicit and recalculated repeatedly. DP explicitly stores these transitions to enable efficient reuse of previously computed states.

Returning to "Unique Paths," without caching:

- You’d need to manually record every path count for each cell.
- Recursive calls to `(i-1,j)` and `(i,j-1)` would redundantly recompute values that could otherwise be cached.

Without caching or implicit state handling via DP arrays or memoization, solving this problem would involve exponential redundancy—a computational nightmare that highlights why DP is indispensable.

## Dynamic Programming as a Technique Rather Than a Category

Dynamic Programming isn’t a rigid category of problems; it’s a versatile technique applicable to problems lacking closed-form solutions or straightforward sequential relationships. Recognizing when to deploy DP is key.

### Lack of Closed Form or Sequential Relationship

Many problems solved using DP don’t have straightforward closed-form solutions or simple sequential dependencies. For instance:

- In Knapsack problems, there’s no direct formula to decide whether an item should be included; decisions depend on incremental evaluations of states.
- In "Unique Paths," there’s no shortcut formula—each path count must be built incrementally from smaller subproblems.

### Irreducible Asymptotic Complexity of the Solution

DP shines when faced with problems where asymptotic complexity cannot be reduced further through logical shortcuts. It acknowledges that certain operations are inherently expensive but optimizes their execution by caching intermediate results.

### Incremental Nature of Finite States

The essence of DP lies in its incremental approach to finite states. By breaking down complex problems into manageable subproblems and solving them step-by-step, DP transforms exponential complexity into polynomial-time solutions.

### Propagation of Local Optima to Global Optima

Here’s where things get interesting: people often mistake Greedy algorithms as opposites of DP. But algorithms like Dijkstra's demonstrate that Greedy techniques can coexist with DP principles. Greedy approaches aim to make locally optimal decisions at each step—decisions that propagate toward global optima when structural monotonicity exists.

> Side note: I hate the term "Greedy algorithm." It’s not an algorithm; it’s a mindset—a set of techniques and choices made when structural monotonicity allows us to exploit relationships among variables efficiently. In fact, being as greedy as possible is ideal because it implies you’ve discovered necessary relationships within your system’s variables. Unfortunately, with interdependent states (as seen in DP problems), greediness alone won’t suffice. Hell, I guess I will write an article about Greedy "Algorithms" as well at some point.

### Usefulness of Dynamic Programming as a Tool

DP isn’t bound by tags on Leetcode; it’s not just “a category” or “a paradigm.” It’s an adaptable technique—a computational Swiss Army knife that can simplify complex problems across domains like graph theory and optimization.

By liberating your mind from thinking “DP applies only when tagged,” you open up possibilities for applying its principles wherever incremental state tracking can optimize solutions. Whether solving "Unique Paths" or designing algorithms like Dijkstra's that blend Greedy techniques with DP principles—DP remains an indispensable tool for taming complexity.

## But Didn't You Say that DP is a Terrible Interview Question?

Yes. I wrote another article in the past that checks Dynamic Programming as one of the bad interview questions. While DP is undoubtedly a powerful technique, its prominence in coding interviews is, frankly, baffling. And here is why:

### (Seemingly) Testing Technique Over Logic

DP questions frequently evaluate a candidate's familiarity with specific optimization techniques, rather than their inherent ability to think critically about a problem's structure or to derive a solution from first principles. They disproportionately reward pattern recognition and rote memorization, while often penalizing more creative or unconventional approaches.

### Difficulty and Unintuitiveness in State Logic

Defining states and deriving the appropriate transitions between them in a DP solution can be incredibly unintuitive. This is particularly true under the intense pressure of an interview setting. Successfully navigating this process requires a deep understanding of the problem's underlying dependencies, something many candidates, regardless of their actual abilities, struggle to articulate concisely.

### The Real Question It is (And They're Probably Not) Asking

Most DP interview questions aren’t truly assessing, “Can you solve this problem?” The solution is usually relatively straightforward. Instead, they’re probing, often implicitly, “Can you identify the computational bottleneck and devise an optimization strategy to circumvent it?”

Consider the classic problem of generating all permutations of a given string, an operation that inherently possesses O(n!) complexity for a string of length n. What happens in this scenario?

1.  **Inherent Operations**: The algorithm must, by definition, explore every possible arrangement of the input string, involving repeated splitting and joining operations.

2.  **Irreducible Complexity**: There's no known method to fundamentally reduce the number of permutations that must be explored; this complexity is an intrinsic property of the problem itself.

3.  **Optimization Through Caching**: The only recourse is to optimize the _process_ of generating these permutations, potentially by caching intermediate results (e.g., partial permutations) to avoid redundant computations.

In essence, DP becomes a programmer’s acknowledgement that "We cannot simplify this problem any further logically, so we will optimize it through sheer computational force." It leverages hardware resources (cache/memory) to store incremental states dynamically, effectively reducing the observed complexity, even if it doesn't alter the fundamental theoretical limits.

### Why I Would (Almost) Never Ask a Junior Developer About DP

As an interviewer, I would generally avoid asking a junior developer to code a full-fledged DP solution from scratch, unless, of course, I was feeling particularly sadistic that day. Instead, I'd focus on guiding them through a discussion that explores:

1.  The asymptotic complexity of the _necessary_ operations, even in the absence of optimization.
2.  The identification of potential computational bottlenecks, which less experienced developers often colloquially refer to as “overlapping subproblems.”

I firmly believe that understanding _why_ caching is beneficial and _how_ it mitigates redundancy provides far greater insight than simply memorizing patterns or regurgitating textbook definitions. If a candidate can convincingly pinpoint a bottleneck and articulate how caching alleviates it, they've demonstrated a genuine grasp of the essence of Dynamic Programming.

## So What's the Verdict?

Dynamic Programming is more than just a collection of buzzwords like "overlapping subproblems," "optimal substructure," "memoization," and "tabulation." It’s a testament to computational optimization employed when logical wit reaches its end. Perhaps, one day, we'll discover exploitable modal relationships between the variables and states at play in typical DP problems, allowing us to derive truly elegant, closed-form solutions.

Until then, we are left to computationally bludgeon these problems into submission. Consider the Four-Color Map Theorem. For decades, the theorem stood without a concise, human-verifiable proof. Instead, it was brute-forced with immense computational power, exhaustively checking countless configurations until the conjecture was deemed valid, albeit unsatisfyingly.

DP extends this spirit: it’s our human ingenuity, coupled with computational muscle, allowing us to tackle intractable problems. Once you recognize that DP is a versatile _technique_ you can leverage to simplify complexities in graph theory, set theory, and beyond, it transforms from a dreaded interview topic into a powerful tool in your problem-solving arsenal.

So, the next time you encounter a Dynamic Programming problem, don't despair. Embrace the challenge, understand the underlying principles, and wield it with the clinical precision it deserves. After all, it might not be elegant, but sometimes, brute force is the only path forward.
