(function() {
  var __slice = Array.prototype.slice;
  describe('About Functions', function() {
    it('should declare functions', function() {
      var add;
      add = function(a, b) {
        return a + b;
      };
      return expect(add(1, 2)).toBe(FILL_ME_IN);
    });
    it('should know internal variables override outer variables', function() {
      var getMessage, message, overrideMessage;
      message = 'Outer';
      getMessage = function() {
        return message;
      };
      overrideMessage = function() {
        return message = 'Inner';
      };
      expect(getMessage()).toBe(FILL_ME_IN);
      expect(overrideMessage()).toBe(FILL_ME_IN);
      return expect(message).toBe(FILL_ME_IN);
    });
    it('should have lexical scoping', function() {
      var parentfunction, variable;
      variable = 'top-level';
      parentfunction = function() {
        var childfunction;
        variable = 'local';
        return childfunction = function() {
          return variable;
        };
      };
      return expect(parentfunction()()).toBe(FILL_ME_IN);
    });
    it('should use lexical scoping to synthesise functions', function() {
      var increaseBy3, increaseBy5, makeIncreaseByFunction;
      makeIncreaseByFunction = function(increaseByAmount) {
        return function(numberToIncrease) {
          return numberToIncrease + increaseByAmount;
        };
      };
      increaseBy3 = makeIncreaseByFunction(3);
      increaseBy5 = makeIncreaseByFunction(5);
      return expect(increaseBy3(10) + increaseBy5(10)).toBe(FILL_ME_IN);
    });
    it('should allow extra function arguments', function() {
      var returnAllArgs, returnAllButFirst, returnFirstArg, returnSecondArg;
      returnFirstArg = function(firstArg) {
        return firstArg;
      };
      expect(returnFirstArg('first', 'second', 'third')).toBe(FILL_ME_IN);
      returnSecondArg = function(firstArg, secondArg) {
        return secondArg;
      };
      expect(returnSecondArg('only give first arg')).toBe(FILL_ME_IN);
      returnAllArgs = function() {
        var allargs;
        allargs = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
        return allargs;
      };
      expect(returnAllArgs('first', 'second', 'third')).toBe(FILL_ME_IN);
      returnAllButFirst = function() {
        var firstArg, rest;
        firstArg = arguments[0], rest = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
        return rest;
      };
      return expect(returnAllButFirst('first', 'second', 'third')).toBe(FILL_ME_IN);
    });
    it('should pass functions as values', function() {
      var appendDoubleRules, appendRules, praiseSinger;
      appendRules = function(name) {
        return name + ' rules!';
      };
      appendDoubleRules = function(name) {
        return name + ' totally rules!';
      };
      praiseSinger = {
        givePraise: appendRules
      };
      expect(praiseSinger.givePraise('John')).toBe(FILL_ME_IN);
      praiseSinger.givePraise = appendDoubleRules;
      return expect(praiseSinger.givePraise('Mary')).toBe(FILL_ME_IN);
    });
    it('should understand destructuring assignment', function() {
      var city, forecast, temperature, weatherReport, _ref;
      weatherReport = function(location) {
        return [location, 22, 'Mostly sunny'];
      };
      _ref = weatherReport('London'), city = _ref[0], temperature = _ref[1], forecast = _ref[2];
      expect(city).toBe(FILL_ME_IN);
      return expect(temperature).toBe(FILL_ME_IN);
    });
    return it('should understand destructuring works with splats', function() {
      var end, middle, phrase, start, _i, _ref;
      phrase = 'Now is the time for all good men to come to the aid of the Party';
      _ref = phrase.split(' '), start = _ref[0], middle = 3 <= _ref.length ? __slice.call(_ref, 1, _i = _ref.length - 1) : (_i = 1, []), end = _ref[_i++];
      expect(start).toBe(FILL_ME_IN);
      return expect(end).toBe(FILL_ME_IN);
    });
  });
}).call(this);
