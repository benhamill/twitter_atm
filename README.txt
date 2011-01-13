This isn't a thing that makes Twitter give you cash. This is a thing where you
use a PIN to get something. Specifically, this is a simple tool for navigating
Twitter's PIN-based OAuth path from the command line. My use case is when I have
an application that will tweet programatically, but only to one account ever. I
don't want to build a callback web page or all that and I don't want to keep
looking up how to do this process, so I made a simple gem.

Usage is like this:

$ twitter_atm --secret=2389rh2fgi8hg10938uftr12 --username=benhamill
Go to http://twitter.com/whatever/get/a/real/example?some_arg=stuff&other=things

Then you log in and hit yes and get the pin and do this:

$ twitter_atm --pin=1234567 --secret=309r8uy08gtg2orwhatever
Your OAuth credentials are... some format. Haven't worked this out exactly.

Simple.

Props to @hoonpark for the name idea.
