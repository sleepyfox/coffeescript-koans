describe 'About Applying What We Have Learnt', ->
  operations = [
    { direction: 'RT', distance: 200}
    { direction: 'FWD', distance: 50}
    { direction: 'RT', distance: 100}
    { direction: 'RT', distance: 20}
    { direction: 'FWD', distance: 200}
    { direction: 'RT', distance: 10}
  ]

  it 'should find a needle in a haystack (imperative)', ->
    findNeedle = (ops) ->
      hasInvalidOperation = false
      for i in [0..ops.length]
        if (ops[i].direction === 'FWD' && ops[i].distance > 100)
          hasInvalidOperation = true
          break
      return hasInvalidOperation

    expect(findNeedle(operations)).toBe(FILL_ME_IN)


  it 'should find needle in a haystack (functional)', ->
    findNeedle = true for x in operations when x.direction is 'FWD' and x.distance > 100
    (expect findNeedle?).toBe(FILL_ME_IN)


  it 'should add all the natural numbers below 1000 that are multiples of 3 or 5 (imperative)', ->
    total = 0;
    for i in [1..1000]
      if (i % 3 == 0 || i % 5 == 0)
        total += i
    expect(total).toBe(FILL_ME_IN)


  it 'should add all the natural numbers below 1000 that are multiples of 3 or 5 (functional)', ->
    total = 0
    sum = (a) -> total = total + a

    total = sum x for x in [1..1000] when x % 3 is 0 or x % 5 is 0
    (expect total).toBe(FILL_ME_IN)


  it 'should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (imperative)', ->
    sum = 0
    fib = [0, 1, 1]
    i = 3
    currentFib = 0

    # Note, the condition in the while loop isn't strictly necessary, as the first fib
    # >4m is actually odd, but it is good practice for avoiding fencepost errors
    while (currentFib = fib[i] = fib[i-1] + fib[i-2]) < 4000000
      if (currentFib % 2 == 0)
        sum += currentFib
      i+=1

    expect(sum).toBe(FILL_ME_IN)
# 4613732

  it 'should find the sum of all the even valued terms in the fibonacci sequence which do not exceed four million (functional)', ->
  # generate array
  fib = (lastFib = 1, secondToLastFib = 0) -> lastFib + SecondToLastFib
  while fib = nextfib


    calcNextFibTuple = function(item, index, array) {
      return [item[1], item[0]+item[1]]
    }
    addEven = function(result, item) {
      if (item[0]  % 2 === 0) {
        return result + item[0]
      }
      return result
    }
    fib = df.until('item[0] > 4000000', calcNextFibTuple, [0,1])
    sum = df.reduce(fib, addEven, 0)

    expect(sum).toBe(FILL_ME_IN)
###
# UNCOMMENT FOR EXTRA CREDIT
  it 'should find the largest prime factor of a composite number', ->

  it 'should find the largest palindrome made from the product of two 3 digit numbers', ->

  it 'should what is the smallest number divisible by each of the numbers 1 to 20', ->

  it 'should what is the difference between the sum of the squares and the square of the sums', ->

  it 'should find the 10001st prime', ->
###