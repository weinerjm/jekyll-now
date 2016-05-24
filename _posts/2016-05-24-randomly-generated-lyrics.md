---
layout: post
title: Randomly Generated Lyrics
---
[Last post]({{site.baseurl}}/blog/metal-lyrics-analysis/), I presented some simple analysis of a database of metal lyrics. In this post, I want to present another fun product of that work: randomly generated lyrics.

Randomly Generating Text with NLTK
====
To randomly generate sentences, I did close to the simplest thing possible: utilize the Natural Language Tool Kit (NLTK), a convenient Python library, to create a trigram language model and randomly generate a chain of words from a probability distribution corresponding roughly to the distribution of phrases in a sub-section of the metal lyrics corpus.

Unfortunately, the newest version of the NLTK does not support Ngram models anymore. Fortunately, version 2.0.4 does and it's easy to set up a play environment with `conda`. 

I found that I couldn't install version 2.0.4 of NLTK with the newest versions of all my other Python libraries installed. This is the first time that I've even had to worry about setting up a virtual environment.

Moral of the story: always set up a virtual environment!

Some Verses
===
Below are some lightly curated lyrics that came out of the generator. It's endless fun, so another project I have in mind is to set up a simple web app where people can make their own.


> So here is racking my mind
> 
> The rush of the sun no longer holds me tight
> 
> Lost in an aimless existence 
> 
> Where will I touch the Sand Skies' Sphynx?
> 
> Your daughters breathe away all we have been
> 
> Why do I always feel now that we sold 4 albums to our sun on its own?
> 
> So, nothing... spitefully turns away
> 
> Life of ignorance regrets illuminate
> 
> Too late to turn around 
> 
> Clouds are forming a chaotic mind.
> 
> Every messed up, start your brain 
> 
> No one to guide, to strike you down, to adore you

And another:

> In mysteries look at you now to extremes
> 
> An insatiable hunger for the return of Eden and to Constantinople they brought back the dark.
> 
> Thousand litres of blood, drink my wine
> 
> And hearts of the government has a weak man, a centuries-old heart
> 
> I tried to hoot them
> 
> One ring to bask in your head and listen to wrongs 
> 
> I guess we're all losing count 
> 
> Drown yourself in the shadows for us see a dark night with 
> 
> Phoenix and to be the howling night 
> 
> Quiet is shivering as the abyss of wretched goblins 
> 
> I see the thousands' hell

Now one of my favorites:

> The 7th war
>
> I am going insane 
>
> Daddy's creation hails a crucified prophet, dead (expletive).
> 
> Walk onto death.
>
> And the right to govern in its beauty 
>
> Coldness captures my mind now 
>
> The night sky as it's turning into pain
> 
> There is no evil, fueled by hate.
> 
> I have the same old song
>
> This beautiful chapter in the night 
> 
> Gods gave me a vessel, and you freeze into endless pain!
> 
> Harsh! Strain!

Future Directions
=====
I'd like to format the text a little more uniformly, inserting line breaks automatically where appropriate. Other more complicated language models with tagged parts of speech would allow the sentences to make more sense, but just the simple frequency counting without that other information is easy enough. 

Another thing I'd like to do is to identify band genres and themes so that the corpus can be more selective. I already have a good set of (human-verified) genres and lyrical themes from the [Encylopaedia Metallum](http://www.metal-archives.com), but since I got the lyrics from [DarkLyrics](http://www.darklyrics.com) it will take a little bit of work to get the data in the right format.

I hope you enjoyed this post as much as I did!

Acknowledgments
----
Special thanks to Matt O. for his ideas and encouragement.
