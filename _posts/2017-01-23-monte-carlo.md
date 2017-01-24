---
layout: post
title: The "Power" of Monte Carlo Methods
---

Recently, I was going through some exercises at [CodeFights](http://www.codefights.com), a website for learning programming languages. One exercise was about designing an optimal algorithm for filling discrete-sized "buckets" in an optimal way.

I wanted to finish the problem quickly, but my intuition for fundamental computer science-type dynamic programming is very bad. I came up with a quick greedy approach and I wasn't able to pass the hidden tests (_i.e.,_ I didn't complete the challenge).

But without taking too much time to compute it, I could randomly re-shuffle the inputs and then take the best solution: the scenario with the fewest number of buckets used to store all the items. This wasn't exactly enumerating every possible ordering of the inputs (though I did try that--turns out exponential scaling quickly makes problems intractable). But the result, after trying enough random re-shufflings of the data, was that I was able to pass all the hidden tests within the time limit.

I don't think I had ever _really_ grasped the usefulness of the Monte Carlo technique. I had thought it more a curiosity or something restricted to a very specific set of problems. But actually, combining a not-dumb-but-not-smart algorithm with randomization can quickly solve more problems than I would believe.

This sort of makes sense for problems with a limited number of degrees of freedom and restrictions on the desired solution that aren't too stringent. Most physics students probably have had to do some sort of calculation of the probability that all the air molecules in a room are in a corner at one time. The answer is that it'll pretty much never happen. But if you're looking for an answer that doesn't rely on your system getting too far out of equilibrium, you could find it in a reasonable amount of time using randomization methods.

Randomizing is actually something we use in our daily lives quite a bit.

- What do you do when your potato wedges are too clumped up on the baking sheet? You shake it around until they look kind of even. Here you're sampling a much more likely high entropy state. 

- What do you do when you can't quite fit the ground coffee in the jar? You shake it around until you have enough room to get the lid on. This is more like stochastic gradient descent into a lower-energy state. 

Here's a less intuitive example: one of my buddies was working on trying to extract meaningful quantities out of the result of a complicated calculation with a very complex functional form. It's the sum of hundreds of simple poles with functional form \(a/(x-x_0)\) but sampled at discrete points since it is generated with numerical methods. He wanted to estimate the background level, but trying to fit a sum of poles was failing because the fitting is very sensitive to the initial guesses for the parameters. 

He decided to use the mean of the entire spectrum as an estimate of the background level. This probably works, but it relies on having an equal number of points at very large positive and negative values of \(f(x)\). 

How do you check that your estimate of the mean is accurate? Well, you can try shifting the offset on the \(x\) values that you've sampled. For instance, instead of sampling \(0, 2, 4 ...\) you can sample \(1, 3, 5 ...\). Then you can build a distribution of the mean versus the \(x\)-coordinate offset. 

This is only possible if it doesn't take too long to generate the spectrum. But someone else on the project told him it was a good idea, so I felt clever.

In summary, it's easy to forget how Monte Carlo techniques can make medium-difficulty problems easy, or very difficult problems medium difficulty. When you remember, then you will feel great.
