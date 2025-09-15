+++
date = "2025-09-15T19:35:59+09:00"
draft = true
categories = []
tags = ["English"]
title = "How to Give Technical Interviews.ko"
summary = ""
+++

One of my junior devs I was mentoring asked me: why do I even need to study algorithms? I never use it in my day to day job.

I actually argued back, that he doesn't use that exact algorithm, but he does (or should be) using the exact process of systemic problem solving approach.

But this sentiment goes both ways: a lot of senior engineers who gives these interviews actually say these are not a good measure to select good candidates.

But in my opinion, the coding interviews that ask algorithmic problem solving is actually the best way for me to gauge if a person is going to perform well and adopt well to their new responsibility.

So I'm going to do the unpopular, and argue that the coding interviews are in fact very much applicable to everyday work. The reason they suck for the interviewers and interviewees, is not because of the interviewees but because of inadequacy on the interviewer side.

- Invert a Binary Tree
  React Founder not being able to solve this problem made this a meme question, where people often fall back on this as the example of

- Network Delay Time

What we should be testing vs what we currently do

The reason that coding interviews become ineffective, is for two reasons:

1. if you are testing problem solving "skill" over "problem solving" skill, you make the mistake of testing the exposure over understanding and experience over capability.
2. if the interviewer is not trained to understand and solve the problem they are giving, they often end up testing not if the candidate has systemic way of approaching a problem (agnostic of language and space) but only whether they can think of the solution that the interviewer prefers and knows.

What we actually test during these interview -> whether the person can recognize the problem (pattern match), come up with efficient solution (recall), and implement it correctly (technique).

The issue is, that while pattern recognition, recalling past experiences, and technical proficiency is indeed important, these are honed by repetition, not by cognition. With this approach of interviewing candidates, we cannot tell apart people who can solve the problem first principles versus the ones who have seen this problem before.

So here is what I look for in a programming interview. This is also how I approach any problem, including algorithmic and programming design questions:

1. Extensive questions: I know a lot of "how to" videos talk about clarifying and explictizing each assumptions, but this is arguably the most important part of the problem. Even if you have seen the problem before, you should ask questions to verify the extremities of the input and the time/memory you have to work with. Because this phase is not just a ritual contrary to popular belief. This is the phase where you scope the problem space, and precisely define the extent of it, thereby the invariants of the problem space. For me, if a person doesn't go through thorough and systemic combing and inferences he or she clears with me, the rest of the interview is just irrelevant. Because it's not a incompetent developers that code in massive bugs that costs the company dollars and contracts. It's the ones who make assumptions and runs with it competently that does this. Even if you end up spending some time here, it is worth it. I believe that if the problem space is precisely defined, the elegance and efficiency of the problem space is inevitable.
2. As you go, add test cases: If you make a hypothesis, you need to make a new test case to try to break it. This is very important (I'd rate this as third most important thing, after Step 1 and Step 6). Testing is how we think about our code. Moreover, it is how we scope and identify the extremities of the problem space. The test cases tell me your mental model of the problem space, and thereby how you envision the invariants of the problem space.
3. Assume that there are no constraints: Assume you have infinite memory and infinite time. Then, derive a solution. This is where brute force solutions are formed. Come up with all ways you can think of to solve this problem if there were no constraints. Solve the most specific problem space of no constraint first. This is less of "you should do this," and more of a tip for someone who approaches a problem
4. Analyze the complexity: Tell me why or why not the brute force or the first thing you thought of and explain why or why not for this problem's actual constraints this is feasible or not. You don't have to be exact, but you should be able to tell the difference between linear, logarithmic, quadratic, polynomial, exponential-factorial (they are different but practically infeasible). This is very important because you cannot convince other people that your way is better for the job because you say so.
5. Identify where the bulk of the complexity comes from: This is the identification of bottle neck. Tell the interviewer your intuitions and pattern recognitions, and how you want to optimize that part.
6. Explicitly go over the trade offs: This is arguably the second most important part of the interview for me. If a candidate says "this is how I would optimize it" without explaining why that is better, I tend to be very conservative in giving a good report on that candidate. The issue is, that we do not have a perfect way of solving a problem. We have the least objectionable way given the constraints we have. If you tell me one way and not any other things you considered, that tells me you either do not know that the other ways exist, or that you've seen this problem before. At the job, you would be expected to solve a problem systematically with your peers, considering various options available to solve a specific problem. Articulating the trade offs is crucial part of the problem solving, arguably more important that finding a working logic or solution.
7. Explain the high level approach to me, and give me the expected complexity: Before you start coding, I want to know how you plan to tackle the problem. This is not only useful because I know what you are doing, but more importantly because I understand how you want to solve a problem, I can help you if you get stuck. If you skim out on this phase, and you get stuck, I would not be able to help you because I don't know what you are doing.
8. Code the solution: This, in my opinion, is the least important part of the interview. In fact, I've been more successful evaluating a candidate's ability when I aggregated the score for the first six steps, then including whether you can implement the solution correctly. This is impressive, sure, but this is where problem solving "skill" lives, not "problem solving" skill.
9. Run through Testing: this is useful, but not strictly necessary. I actually think this is a ceremonial step that people used to use to infer "does this person test their code?" But if you do Step 2 extensively, this becomes redundant.
10. Give me optimization ideas: Again, not strictly necessary but useful. In reality, the optimization at this phase should not be asymptotically better in time complexity than your final solution. Because if you have not marginal and computational micro-optimizations but asymptotic improvements in time complexity, that usually means you haven't done a good job of Step 1 and Step 2 and Step 6. If you define the problem space thoroughly and go over different trade offs, you would not be able to optimize the solution without trading off for space complexity. Some dynamic programming problems where the canonicalized relationships can be further collapsed from 2D dp to 1D dp is different because sometimes that collapsing is not trivial when you do not have the 2d relation before your eyes. But again, notice that you don't get asymptotic benefits on time complexity.

So I urge the senior engineers giving these interviews: don't test if the person can solve that problem in exactly the way you know how. Engage with them and see if they can systemically approach the solution. Because that is the only way we can test if a person can solve a problem they have never seen before. If they can reason through their decisions and work with you at each step from first principles.
