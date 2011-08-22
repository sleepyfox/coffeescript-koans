(function() {
  var __indexOf = Array.prototype.indexOf || function(item) {
    for (var i = 0, l = this.length; i < l; i++) {
      if (this[i] === item) return i;
    }
    return -1;
  };
  describe('About Higher Order Functions', function() {
    it("should use 'for' for simple iteration", function() {
      var i, msg, numbers, tell, _i, _len;
      numbers = [3, 2, 1, 0];
      msg = '';
      tell = function(num) {
        if (num > 0) {
          return "" + num + ", ";
        } else {
          return "Blastoff!";
        }
      };
      for (_i = 0, _len = numbers.length; _i < _len; _i++) {
        i = numbers[_i];
        msg += tell(i);
      }
      expect(msg).toEqual(FILL_ME_IN);
      return expect(numbers).toEqual(FILL_ME_IN);
    });
    it("should use 'in' to test inclusion", function() {
      var numbers;
      numbers = [1, 2, 3];
      return expect(__indexOf.call(numbers, 2) >= 0 ? true : false).toBe();
    });
    it('should use a Javascript-style filter to return array items that meet a criteria', function() {
      var even, evens, numbers;
      numbers = [1, 2, 3, 4, 5, 6];
      even = function(a) {
        if (a % 2 === 0) {
          return true;
        } else {
          return false;
        }
      };
      evens = numbers.filter(even);
      expect(evens).toEqual(FILL_ME_IN);
      expect(evens.length).toBe(FILL_ME_IN);
      return expect(numbers.length).toBe(FILL_ME_IN);
    });
    it('should use a CoffeeScript-style filter', function() {
      var even, numbers, odds, x;
      numbers = [1, 2, 3, 4, 5, 6];
      even = function(a) {
        if (a % 2 === 0) {
          return true;
        } else {
          return false;
        }
      };
      odds = (function() {
        var _i, _len, _results;
        _results = [];
        for (_i = 0, _len = numbers.length; _i < _len; _i++) {
          x = numbers[_i];
          if (!even(x)) {
            _results.push(x);
          }
        }
        return _results;
      })();
      expect(odds).toEqual(FILL_ME_IN);
      expect(odds.length).toBe(FILL_ME_IN);
      return expect(numbers.length).toBe(FILL_ME_IN);
    });
    it('should use a Javascript-style map to transform each element', function() {
      var numbers, numbersPlus1, plus1;
      numbers = [1, 2, 3];
      plus1 = function(a) {
        return a + 1;
      };
      numbersPlus1 = numbers.map(plus1);
      expect(numbers).toEqual(FILL_ME_IN);
      return expect(numbersPlus1).toEqual(FILL_ME_IN);
    });
    it('should use a CoffeeScript style map to transform each element', function() {
      var doubles, numbers, twice, x;
      numbers = [1, 2, 3];
      twice = function(a) {
        return a * 2;
      };
      doubles = (function() {
        var _i, _len, _results;
        _results = [];
        for (_i = 0, _len = numbers.length; _i < _len; _i++) {
          x = numbers[_i];
          _results.push(twice(x));
        }
        return _results;
      })();
      expect(numbers).toEqual(FILL_ME_IN);
      return expect(doubles).toEqual(FILL_ME_IN);
    });
    it("should use Javascript-style 'reduce' to calculate a total over the array", function() {
      var numbers, reduction, total;
      numbers = [1, 2, 3];
      total = function(i, a) {
        return i + a;
      };
      reduction = numbers.reduce(total);
      expect(reduction).toBe(FILL_ME_IN);
      return expect(numbers).toEqual(FILL_ME_IN);
    });
    return it('should use a Coffeescript-style reduce to calculate a total', function() {
      var numbers, sum, total, x, _i, _len;
      numbers = [1, 2, 3];
      total = 0;
      sum = function(a) {
        return total = total + a;
      };
      for (_i = 0, _len = numbers.length; _i < _len; _i++) {
        x = numbers[_i];
        sum(x);
      }
      expect(total).toBe(FILL_ME_IN);
      return expect(numbers).toEqual(FILL_ME_IN);
    });
  });
}).call(this);
