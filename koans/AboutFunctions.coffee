should = require('chai').should() # import Chai.js matchers
FILL_ME_IN = 'Fill this value in'

describe 'About Functions', ->
  it 'should declare functions', ->
    # In Coffeescript, the value of the last expression evaluated
    # is by default the return value of the function, this enables
    # us to write very concise function detinitions
    add = (a, b) -> a + b
    add(1, 2).should.equal FILL_ME_IN

  # Again, don't forget this test is pending ('xit')
  # in order to enable this test remove the leading 'x'
  xit 'should know internal variables override outer variables', ->
    message = 'Outer'
    getMessage = -> message
    overrideMessage = -> message = 'Inner'

    getMessage().should.equal FILL_ME_IN
    overrideMessage().should.equal FILL_ME_IN
    message.should.equal FILL_ME_IN # Side effect

  xit 'should have lexical scoping', ->
    variable = 'top-level'
    parentfunction = ->
      variable = 'local'
      childfunction = -> variable

    parentfunction()().should.equal FILL_ME_IN

  xit 'should use lexical scoping to synthesise functions', ->
  # This is a form of partial application
    makeIncreaseByFunction = (increaseByAmount) ->
      (numberToIncrease) -> numberToIncrease + increaseByAmount

    increaseBy3 = makeIncreaseByFunction 3
    increaseBy5 = makeIncreaseByFunction 5

    (increaseBy3(10) + increaseBy5(10)).should.equal FILL_ME_IN

  xit 'should allow extra function arguments', ->
    returnFirstArg = (firstArg) -> firstArg
    result = returnFirstArg('first', 'second', 'third')
    result.should.equal FILL_ME_IN

    returnSecondArg = (firstArg, secondArg) -> secondArg
    result = returnSecondArg('only give first arg')
    result.should.equal FILL_ME_IN # why doesn't this work?
    # How might we get round it? 
    # x.should.not.exist gives an error, how can we fix this?
    # Hint: see http://j.mp/1n2mLR6

  xit 'should allow splats', ->
    returnAllArgs = (allargs...) -> allargs
    result = returnAllArgs('first', 'second', 'third')
    result.should.deep.equal FILL_ME_IN

    returnAllButFirst = (firstArg, rest...) -> rest
    result = returnAllButFirst('first', 'second', 'third')
    result.should.deep.equal FILL_ME_IN

  xit 'should pass functions as values', ->
    appendRules = (name) -> name + ' rules!'
    appendDoubleRules = (name) -> name + ' totally rules!'

    praiseSinger = givePraise: appendRules # Note: Object literal
    praiseSinger.givePraise('John').should.equal FILL_ME_IN

    praiseSinger.givePraise = appendDoubleRules
    praiseSinger.givePraise('Mary').should.equal FILL_ME_IN

  # If only
  xit 'should understand destructuring assignment', ->
    weatherReport = (location) -> [location, 22, 'Mostly sunny']
    [city, temperature, forecast] = weatherReport 'London'
    city.should.equal FILL_ME_IN
    temperature.should.equal FILL_ME_IN

  # I always do what I'm told
  xit 'should understand destructuring works with splats', ->
    phrase = 'Now is the time for all good men to come to the aid of the Party'
    [start, middle..., end] = phrase.split ' '
    start.should.equal FILL_ME_IN
    end.should.equal FILL_ME_IN
