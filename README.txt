This isn't a thing that makes Twitter give you cash. This is a thing where you
use a PIN to get something. Specifically, this is a simple tool for navigating
Twitter's PIN-based OAuth path from the command line. My use case is when I have
an application that will tweet programatically, but only to one account ever. I
don't want to build a callback web page or all that and I don't want to keep
looking up how to do this process, so I made a simple gem.

Props to @hoonpark for the name idea.

Assuming you have rubygems installed, installation is easy:

$ gem install twitter_atm

Usage is like this:

$ twitter_atm --consumer_key=YOUR_CONSUMER_KEY --consumer_secret=YOUR_CONSUMER_SECRET

It will then tell you a URL to go to and prompt for a pin. Go to the URL, hit
'Allow' and copy the PIN number into the prompt. Twitter_atm will then make
another call and return you the access token and secret, with which you can do
whatever you like.

Simple.

--- DISCLAIMER ---
You should store the token and secret in a secure place. If someone else gets
ahold of it (and your consumer key and secret), they could pretend to Twitter to
be you and tweet to the user's account (or whatever they've authorized you to
do). Really, only use this for accounts you own. Using it any other way should
be pretty impractical.

--- Patches and Pull Requests ---
In short: YES!

Some guidelines:
  * Fork the project.
  * Make your commits (if you bump the version, make that it's own commit, please)
  * Submit a pull request. Bonus points for 'release/*' topic branches.
