---
layout: post
author: Aaron
---

This website was started as one of many other covid19 related quarantine projects. A random visit to <a href="https://www.namecheap.com">namecheap</a> showed that the `llvr.xyz` domain was available for 1$/yr and I just thought this would be a fun new thing to play with.

Now I did not want to make it too difficult for myself, so this page is simply hosted and served on Github pages. Jekyll being the default framework used with Github pages, I also went with that. I chose not to fork an existing page or template and instead started from scratch, following the step-by-step tutorial on the <a href="https://jekyllrb.com/docs/step-by-step/01-setup/">official Jekyll homepage</a>, adjusting where needed.

To start off, you don't want to have to push to Github and have your site published and see the results, so try to serve your site locally first and play around. To not pollute your system with ruby/jekyll, use a container. On <a href="https://hub.docker.com/u/jekyll">DockerHub</a> you can find a existing images with the required Jekyll/Bundler dependencies. Just mount the directory with the site source into the container and expose the port (Jekyll uses port 4000 as default). As a one-liner, this would work, assuming you already have docker setup on your system:

```bash
$ docker run --rm --volume=$PWD:/srv/jekyll -p 4000:4000  -it jekyll/builder:3.8 jekyll serve
```

You can access your page at `http://localhost:4000` once it is built and served. If your phone is connected to the same network as your PC, you can also inspect how the page is rendered on mobile.

Anyways, once I got satisfied with playing around with HTML and CSS - and tired of how annoying working CSS is - I pushed to Github, setup the custom domain name, changed the DNS settings on the namecheap panel and voila.

Even thought I enjoy very brutalist web design, I wanted to make the overall looks of the site be a *tad* less like straight of the 90s, so I looked at changing the font. Which turned out to be pretty disappointing, given that everyone seems to be just using the Google-hosted webfonts. Even Mozilla basically does not mention any better alternative on their <a href="https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Web_fonts">developer page</a>. Until finally I found a nice <a href="https://www.tunetheweb.com/blog/should-you-self-host-google-fonts/">page</a> discussing self hosting fonts, which I decided to do. This site is now featuring the Glacial Indifference font by Haneken Design Co found on <a href="https://www.fontsquirrel.com/fonts/glacial-indifference">fontsquirrel</a>. Using fontsquirrels online WebFont converter makes the process of integrating the new fonts into the website super smooth.
