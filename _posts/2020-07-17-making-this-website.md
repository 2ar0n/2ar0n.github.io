---
layout: post
author: Aaron
---

*Note: this page will be updated along with this site.*
This website was started as one of many other covid19 related quarantine projects. A spontaneous visit to <a href="https://www.namecheap.com">namecheap</a> showed that the `llvr.xyz` domain was available for 1$/yr and I just thought this would be a fun new thing to play with.

Now I did not want to make it too difficult for myself, so this page is simply hosted and served by Github pages. Jekyll being the default static website framework used with Github, I also went with that. But I chose not to fork an existing template and instead started from scratch, following the step-by-step tutorial on the <a href="https://jekyllrb.com/docs/step-by-step/01-setup/">official Jekyll homepage</a>, adjusting where needed.

To start off with tinquering with the site, you don't want to depend on commiting/pushing to Github and have your site published to see the results. So instead serve your site locally first and play around. To not pollute your system with ruby/jekyll, use a container. On <a href="https://hub.docker.com/u/jekyll">DockerHub</a> you can find existing images with the required Jekyll/Bundler dependencies. Just mount the directory with the site source into the container and expose the port (Jekyll uses port 4000 as default). As a one-liner, this would work, assuming you already have docker set up on your system:

```bash
# from the directory where your site source code is located
$ docker run -it --rm -v "$PWD":/usr/src/app -p "4000:4000" starefossen/github-pages 
```

Once the jekyll plugins are loaded and the site is built, you can access your page at `http://localhost:4000`. If your phone or other mobile device is connected to the same local network as your PC, you can also inspect how the page is rendered on mobile. Checking on different browsers is a good idea to make sure the experience is consistent.

Anyways, once I got satisfied with playing around with HTML and CSS - and tired of how annoying working CSS is - I pushed to Github, setup the custom domain name, changed the DNS settings on the namecheap panel and voila.

Even thought I enjoy very brutalist web design, I wanted to make the overall looks of the site be a *tad* less like straight of the 90s, so I looked at changing the font. Which turned out to be pretty disappointing, given that everyone seems to be just using the Google-hosted webfonts. Even Mozilla basically does not mention any better alternative on their <a href="https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Web_fonts">developer page</a>. Until finally I found a nice <a href="https://www.tunetheweb.com/blog/should-you-self-host-google-fonts/">page</a> discussing self hosting fonts, which I decided to do. This site is now featuring the Glacial Indifference font by Haneken Design Co found on <a href="https://www.fontsquirrel.com/fonts/glacial-indifference">fontsquirrel</a>. Using fontsquirrels online WebFont converter makes the process of integrating the new fonts into the website super smooth.

*Update 11/09/2020*: I stumbled onto [this website](https://tomgamon.com/) that has this funny wave animation and found out it was implemented without Javascript using simple css, so I modified and added it to the navigation bar.
