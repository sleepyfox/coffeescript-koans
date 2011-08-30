describe 'About Functions', ->
  it 'should declare functions', ->
    # In Coffeescript, the value of the last expression is the return value of the function
    add = (a, b) -> a + b
    expect(add(1, 2)).toBe(FILL_ME_IN)


  it 'should know internal variables override outer variables', ->
    message = 'Outer'
    getMessage = -> message
    overrideMessage = -> message = 'Inner'

    expect(getMessage()).toBe(FILL_ME_IN)
    expect(overrideMessage()).toBe(FILL_ME_IN)
    expect(message).toBe(FILL_ME_IN) # Side effect


  it 'should have lexical scoping', ->
    variable = 'top-level'
    parentfunction = ->
      variable = 'local'
      childfunction = -> variable

    expect(parentfunction()()).toBe(FILL_ME_IN)


  it 'should use lexical scoping to synthesise functions', ->
    makeIncreaseByFunction = (increaseByAmount) ->
      (numberToIncrease) -> numberToIncrease + increaseByAmount

    increaseBy3 = makeIncreaseByFunction 3
    increaseBy5 = makeIncreaseByFunction 5

    expect(increaseBy3(10) + increaseBy5(10)).toBe(FILL_ME_IN)


  it 'should allow extra function arguments', ->
    returnFirstArg = (firstArg) -> firstArg
    expect(returnFirstArg('first', 'second', 'third')).toBe(FILL_ME_IN)

    returnSecondArg = (firstArg, secondArg) -> secondArg
    expect(returnSecondArg('only give first arg')).toBe(FILL_ME_IN)

    # Coffeescript supports splats
    returnAllArgs = (allargs...) -> allargs
    expect(returnAllArgs('first', 'second', 'third')).toEqual(FILL_ME_IN)

    returnAllButFirst = (firstArg, rest...) -> rest
    expect(returnAllButFirst('first', 'second', 'third')).toEqual(FILL_ME_IN)


  it 'should pass functions as values', ->
    appendRules = (name) -> name + ' rules!'
    appendDoubleRules = (name) -> name + ' totally rules!'

    praiseSinger = givePraise: appendRules
    expect(praiseSinger.givePraise 'John' ).toBe(FILL_ME_IN)

    praiseSinger.givePraise = appendDoubleRules
    expect(praiseSinger.givePraise 'Mary' ).toBe(FILL_ME_IN)


  it 'should understand destructuring assignment', ->
    weatherReport = (location) -> [location, 22, 'Mostly sunny']
    [city, temperature, forecast] = weatherReport 'London'
    expect(city).toBe(FILL_ME_IN)
    expect(temperature).toBe(FILL_ME_IN)


  it 'should understand destructuring works with splats', ->
    phrase = 'Now is the time for all good men to come to the aid of the Party'
    [start, middle..., end] = phrase.split ' '
    expect(start).toBe(FILL_ME_IN)
    expect(end).toBe(FILL_ME_IN)
