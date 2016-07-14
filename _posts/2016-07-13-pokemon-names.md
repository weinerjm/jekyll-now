---
layout: post
title: Recurrent Neural Network for Generating Random Pokemon Names
---

**Update:** You can see a web app in action [here](http://pokegen.crabdance.com).

Like the rest of America, I've spent a lot of time the past several days playing Pokemon Go.
I also spent some time learning some basic things about Recurrent Neural Networks (RNNs) for generating random text. 
Previously, I had used simpler methods for generating random text.

But since "Deep Learning" sounds cool (and is cool), I decided to use this sophisticated method to generate random Pokemon names!
There are already some web projects that create [Pokemon mashups](http://pokemon.alexonsager.net/) and can generate [random teams of Pokemon](http://randompokemon.com/) or [random Pokemon names](http://fantasynamegenerators.com/pokemon-names.php). But I didn't see anything that did precisely what I wanted--the closest was [Andrej Karpathy's baby names](http://karpathy.github.io/2015/05/21/rnn-effectiveness/).

I set up [Justin Johnson](http://cs.stanford.edu/people/jcjohns/)'s [torch-rnn](https://github.com/jcjohnson/torch-rnn) project (based on [Andrej Karpathy](http://twitter.com/karpathy)'s [char-rnn](https://github.com/karpathy/char-rnn)) following [Jeff Thompson's instructions](http://www.jeffreythompson.org/blog/2016/03/25/torch-rnn-mac-install/). 
I then got a list of [all the Pokemon names]({{ site.url }}/assets/pokemon.txt) from all generations from [Bulbapedia](http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_name). I had to write a simple script to parse out the names from the article's source before feeding it into the preprocessor.

Then, I just fed it into the RNN with default settings and the start text "Rapidash" (a real Pokemon) and let it do its thing. You can find a list of a couple hundred generated Pokemon names [here]({{ site.url }}/assets/random_pokemon.txt).

Some of my favorites:

> Goomoonsher
> Charmant
> Dilolipch
> Bariboo
> Literona
> Gmoople
> Mingus
> Seeflip

Actually, I can't tell if some of these are real names! I'm not familiar with many Pokemon after Generation I.

I would like to put this up as a web app somewhere but I don't know where I could install torch easily on a free-tier server.

Up next: downloading images from Bulbapedia and trying to use some neural networks to generate random Pokemon art!
