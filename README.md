# CoffeeScript Koans
The goal of the CoffeeScript koans is to teach you [CoffeeScript](http://coffeescript.org/) programming through actually doing it, in a test-first fashion. 

When you first run the Koans, you'll be presented with a run-time error and a stack trace indicating where the error occurred. Your goal is to make the error go away. As you fix each error, you should learn something about the CoffeeScript language and functional programming in general.

Your journey towards CoffeeScript enlightenment starts in the Koans folder with the AboutExpects.coffee file. 

These Koans will be very simple, so don't over-think them! As you progress through more Koans, more and more CoffeeScript syntax will be introduced which will allow you to solve more complicated problems and use more advanced techniques.

# Getting Started

This project requires [Node.js](http://nodejs.org/) - if you haven't already installed it I would recommend installing the Node Version Manager - [NVM](https://github.com/creationix/nvm) - and using that to install Node.
	
Install dependencies by using npm from the command line:
	
	npm install

# Running the Koans

Start with copying the file koans/AboutShould.coffee to the completed-koans/ folder. 

Run the tests with [Mocha](http://visionmedia.github.io/mocha/) on the command line:

	npm test

You should see the following output: 

	About Should
	    1) should expect true
	    - should have filled in values
	    - should understand type coercion is fixed
	    - should expect equality
	    - should assert equality a better way

	0 passing (7ms) <- this is how long the tests took to run
	4 pending
	1 failing

You'll see that one of the tests is failing, and that the other 4 have been temporarily disabled (marked as 'pending').  

Edit the AboutShould.coffee file (your copy in the completed-koans/ folder) with the editor or IDE of your choice and follow the directions to fix the problem in the first test.

When you think you've fixed the problem, run the tests again.

	npm test

When that test passes, enable the next pending test. Rinse and repeat until all tests turn green, simples :-)

When you're done with AboutShould.coffee, copy another file from the koans/ folder to the completed-koans/ folder and start work on that.

I'd suggest trying them in the following order, but it's not prescriptive:

1. AboutShould.coffee
1. AboutFunctions.coffee
1. AboutArrays.coffee
1. AboutMutability.coffee
1. AboutObjects.coffee
1. AboutInheritance.coffee
1. AboutHigherOrderFunctions.coffee
1. AboutApplyingWhatWeHaveLearnt.coffee

If you want to just test a single test file, you can do it like this: (remember to add in the name of your file)

	mocha --compilers coffee:coffee-script/register -R spec completed-koans/FILE-NAME-GOES-HERE.coffee

If you want mocha to watch your files for changes and rerun the tests automagically when you save changes to a test file, simply use:

	npm run watch

Have fun, and I hope you enjoy playing with CoffeeScript!

# Endorse this project 
To say 'thanks' please endorse this project on [Coderwall](http://coderwall.com) by clicking the button below:

[![endorse](http://api.coderwall.com/sleepyfox/endorsecount.png)](http://coderwall.com/sleepyfox)

Or, if you happen to be in London, please drop by for a chat and buy me a beer!

# Inspirations & thanks

* _David Laing & Greg Malcolm_ - for their JavaScript/Jasmine port of the Ruby koans
* _Edgecase_ - for the great Ruby Koans
* _Jeremy Ashkenas and the CoffeeScript crew on GitHub_ - for making CoffeeScript in the first place
* _Douglas Crockford_ - for JavaScript; the good bits
* _Daniel P. Friedman & Matthias Felleisen_ - for 'The Little LISPer' book, where it all started

# License (legal deed)

The text below is a human-readable summary of (and not a substitute for) the license, contained in the LICENSE file.

* * * * *

![CC BY-NC-SA 4.0](http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png)

Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)

You are free to:

* Share — copy and redistribute the material in any medium or format
* Adapt — remix, transform, and build upon the material

_The licensor cannot revoke these freedoms as long as you follow the license terms._

Under the following terms:

* Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* NonCommercial — You may not use the material for commercial purposes.
* ShareAlike — If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original.
* No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.

Notices:

You do not have to comply with the license for elements of the material in the public domain or where your use is permitted by an applicable exception or limitation.
No warranties are given. The license may not give you all of the permissions necessary for your intended use. For example, other rights such as publicity, privacy, or moral rights may limit how you use the material.
