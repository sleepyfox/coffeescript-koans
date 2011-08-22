(function() {
  describe('About Applying What We Have Learnt', function() {
    var operations;
    operations = [
      {
        direction: 'RT',
        distance: 200
      }, {
        direction: 'FWD',
        distance: 50
      }, {
        direction: 'RT',
        distance: 100
      }, {
        direction: 'RT',
        distance: 20
      }, {
        direction: 'FWD',
        distance: 200
      }, {
        direction: 'RT',
        distance: 10
      }
    ];
    it('should find a needle in a haystack (imperative)', function() {
      var findNeedle;
      findNeedle = function(ops) {
        var hasInvalidOperation, i, _ref;
        hasInvalidOperation = false;
        for (i = 0, _ref = ops.length; 0 <= _ref ? i <= _ref : i >= _ref; 0 <= _ref ? i++ : i--) {
          if (ops[i].direction === 'FWD' && ops[i].distance > 100) {
            hasInvalidOperation = true;
            break;
          }
        }
        return hasInvalidOperation;
      };
      return expect(findNeedle(operations)).toBe(FILL_ME_IN);
    });
    it('should find needle in a haystack (functional)', function() {
      return (expect(findNeedle(operations))).toBe(FILL_ME_IN);
    });
    it('should add all the natural numbers below 1000 that are multiples of 3 or 5 (imperative)', function() {
      var i, total;
      total = 0;
      for (i = 1; i <= 1000; i++) {
        if (i % 3 === 0 || i % 5 === 0) {
          total += i;
        }
      }
      return expect(total).toBe(FILL_ME_IN);
    });
    it('should add all the natural numbers below 1000 that are multiples of 3 or 5 (functional)', function() {
      return (expect(FILL_ME_IN)).toBe(234168);
    });
    it('should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (imperative)', function() {
      var currentFib, fib, i, sum;
      sum = 0;
      fib = [0, 1, 1];
      i = 3;
      currentFib = 0;
      while ((currentFib = fib[i] = fib[i - 1] + fib[i - 2]) < 4000000) {
        if (currentFib % 2 === 0) {
          sum += currentFib;
        }
        i += 1;
      }
      return expect(sum).toBe(FILL_ME_IN);
    });
    return it('should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (functional)', function() {
      return expect(FILL_ME_IN).toBe(4613732);
    });
  });
  /*
  # UNCOMMENT FOR EXTRA CREDIT
    it 'should find the largest prime factor of a composite number', ->
  
    it 'should find the largest palindrome made from the product of two 3 digit numbers', ->
  
    it 'should what is the smallest number divisible by each of the numbers 1 to 20', ->
  
    it 'should what is the difference between the sum of the squares and the square of the sums', ->
  
    it 'should find the 10001st prime', ->
  */
}).call(this);
