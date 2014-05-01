# CoffeeScript Koans - koans to learn CoffeeScript #

This work is based on Ben Hall's [Javascript Koans](https://github.com/BenHall/javascript-koans), which in turn are based upon Edgecase's [Ruby koans](http://github.com/edgecase/ruby_koans). 
The goal of the Coffeescript koans is to teach you CoffeeScript programming through testing.
I'll mercilessly plagarise the original documentation as follows:

When you first run the koans, you'll be presented with a runtime error and a stack trace indicating where the error occurred. Your goal is to make the error go away. As you fix each error, you should learn something about the CoffeeScript language and functional programming in general.

Your journey towards CoffeeScript enlightenment starts in the koans/AboutExpects.coffee file. 

These koans will be very simple, so don't overthink them! As you progress through more koans, more and more CoffeeScript syntax will be introduced which will allow you to solve more complicated problems and use more advanced techniques.

### Getting Started

If you haven't already installed CoffeeScript then follow the installation instructions on the official [CoffeeScript site](http://jashkenas.github.com/coffee-script/#installation) to get set up.

### Running the Koans the command line

Simply navigate to the Javascript Koans folder using a file browser, and double click on KoansRunnner.html. Any browser will do, but for the best results Firefox or Chrome is recommended. More stack trace information shows up for Javascript on these browsers. The first error will be in koans/AboutExpects.coffee, fix the first test and
refresh the browser. You'll need to edit the file, and then compile it using

    coffee -c AboutExpects.coffee 

I've included a Cake buildfile so from the top-level directory you can just type:

    cake build

and it will build all of the .coffee files in the koans/ directory and compile 
them to Javascript in the /lib/koans/ directory.

If you want to keep the original files intact, you can copy them to the completed-koans/ 
directory and use

    cake test

to compile them to lib/koans/

There are a number of ways that you can have .coffee files automatically
compiled to Javascript when you save them, take a look at:

*  [Your IDE e.g. IDEA](http://yeungda.github.com/coffeescript-idea/)
*  [Emacs coffee-mode](https://github.com/defunkt/coffee-mode) 
*  [Guard](https://github.com/netzpirat/guard-coffeescript)

Rinse and repeat until all tests turn green.

For this project I've used [Watchr](https://github.com/mynyml/watchr) - I've provided a koans.watchr file that 
will automatically compile files as they are saved from the koans/ directory to the lib/koans/ directory. 

The test runner used is [Jasmine](http://pivotal.github.com/jasmine/) with a customized report viewer.
 

### Endorse this project 
To say 'thanks' please endorse this project on [Coderwall](http://coderwall.com) by clicking the button below:

[![endorse](http://api.coderwall.com/sleepyfox/endorsecount.png)](http://coderwall.com/sleepyfox)

### Inspirations & thanks

*  _David Laing & Greg Malcolm _ - for their Javascript/Jasmine port of the Ruby koans
*  _Edgecase_ - for the great Ruby Koans
*  _Jeremy Ashkenas and the Coffeescript crew on GitHub_ - for making CoffeeScript in the first place
*  _Douglas Crockford_ - for Javascript; the good bits
*  _Daniel P. Friedman & Matthias Felleisen_ - for 'The Little LISPer' book, where it all started

##### License (legal deed)

The text below is a human-readable summary of (and not a substitute for) the license, contained in the LICENSE file.
---
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
