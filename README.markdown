# CoffeeScript Koans - koans to learn CoffeeScript #

This work is based on Ben Hall's [Javascript Koans](https://github.com/BenHall/javascript-koans), 
which in turn are based upon Edgecase's [Ruby koans](http://github.com/edgecase/ruby_koans). 
The goal of the Javascript koans is to teach you Javascript programming through testing.
I'll mercilessly plagarise the original documentation as follows:

When you first run the koans, you'll be presented with a runtime error and a
stack trace indicating where the error occurred. Your goal is to make the
error go away. As you fix each error, you should learn something about the
CoffeeScript language and functional programming in general.

Your journey towards CoffeeScript enlightenment starts in the koans/AboutExpects.coffee file. 
These koans will be very simple, so don't overthink them! As you progress through
more koans, more and more CoffeeScript syntax will be introduced which will allow
you to solve more complicated problems and use more advanced techniques.

### Running the Koans from a Browser

Simply navigate to the Javascript Koans folder using a file browser, and
double click on KoansRunnner.html. 

Any browser will do, but for the best results Firefox or Chrome is
recommended. More stack trace information shows up for Javascript on these
browsers.

The first error will be in koans/AboutExpects.coffee, fix the first test and
refresh the browser. You'll need to edit the file, and then compile it using

coffee -c AboutExpects.coffee 

There are a number of ways that you can have .coffee files automatically
compiled to Javascript when you save them, take a look at:
* [Your IDE e.g. IDEA](http://yeungda.github.com/coffeescript-idea/)
* [Emacs coffee-mode](https://github.com/defunkt/coffee-mode) 
* [Guard](https://github.com/netzpirat/guard-coffeescript)
Rinse and repeat until all tests turn green.

The test runner used is [Jasmine](http://pivotal.github.com/jasmine/) with a
customized report viewer.

### Inspirations & thanks

*  Ben Hall - for his Javascript/Jasmine port of the Ruby koans
*  Jeremy Ashkenas and the Coffeescript crew on GitHub - for making Coffeescript
*  Douglas Crockford - for Javascript; the good bits
*  Edgecase - for the great Ruby Koans

##### License

This software is (c) 2011 Nigel Runnels-Moss and licensed under the MIT license (see
LICENCE for details).  Enjoy!

