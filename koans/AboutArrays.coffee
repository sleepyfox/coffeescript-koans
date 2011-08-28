describe 'About Arrays', ->
  it 'should create arrays', ->
  # We shall contemplate truth by testing reality, via spec expectations.
    emptyArray = []

    expect(typeof emptyArray).toBe(FILL_ME_IN) # A mistake? - http://j.mp/oRuo6R
    expect(emptyArray.length).toBe(FILL_ME_IN)


  it 'should understand array literals', ->
    array = []
    expect(array).toEqual([])

    array[0] = 1
    expect(array).toEqual([1])

    array[1] = 2
    expect(array).toEqual([1, FILL_ME_IN])

    array.push(3)
    expect(array).toEqual(FILL_ME_IN)


  it 'should understand array length', ->
    fourNumberArray = [1, 2, 3, 4]

    expect(fourNumberArray.length).toBe(FILL_ME_IN)
    fourNumberArray.push(5, 6)
    expect(fourNumberArray.length).toBe(FILL_ME_IN)

    tenEmptyElementArray = new Array(10)
    expect(tenEmptyElementArray.length).toBe(FILL_ME_IN)

    tenEmptyElementArray.length = 5
    expect(tenEmptyElementArray.length).toBe(FILL_ME_IN)


  it 'should understand multitype arrays', ->
    multiTypeArray = [0 # newlines substitute for commas in CoffeeScript
                      1
                      'two'
                      -> 3 # anonymous functions can be array elements
                      value1: 4 # is this one object?
                      value2: 5 # or two objects?
                      [6
                      7]]

    expect(multiTypeArray[0]).toBe(FILL_ME_IN)
    expect(multiTypeArray[2]).toBe(FILL_ME_IN)
    expect(multiTypeArray[3]()).toBe(FILL_ME_IN) # Note the parens!
    expect(multiTypeArray[4].value1).toBe(FILL_ME_IN)
    expect(multiTypeArray[5][0]).toBe(FILL_ME_IN)


  it 'should understand array ranges', ->
    range = [1..5]
    expect(range).toEqual(FILL_ME_IN)

    sdrawkcab = [3..1]
    expect(sdrawkcab).toEqual(FILL_ME_IN)

  it 'should understand array comprehension', ->
    array = [1, 2, 3]
    accumulator = 0
    for element in array
      accumulator += element

    expect(accumulator).toEqual(FILL_ME_IN)


  it 'should understand a more compact array comprehension', ->
    array = [1, 2, 3]
    accumulator = 1
    accumulator += element for element in array

    expect(accumulator).toEqual(FILL_ME_IN)


  it 'should slice arrays', ->
    array = ["peanut", "butter", "and", "jelly"]

    expect(array.slice(0, 1)).toEqual(FILL_ME_IN)
    expect(array.slice(0, 2)).toEqual(FILL_ME_IN)
    expect(array.slice(2, 2)).toEqual(FILL_ME_IN)
    expect(array.slice(2, 20)).toEqual(FILL_ME_IN)
    expect(array.slice(3, 0)).toEqual(FILL_ME_IN)
    expect(array.slice(3, 100)).toEqual(FILL_ME_IN)
    expect(array.slice(5, 1)).toEqual(FILL_ME_IN)


  it 'should understand range slicing', ->
    oneToTen = [1..10]
    expect(oneToTen[3..5]).toEqual(FILL_ME_IN)

    myString = "my string"[0..2]
    expect(myString).toEqual(FILL_ME_IN)

    firstTwo = ['one', 'two', 'three']
    expect(firstTwo[FILL_ME_IN]).toEqual(['one', 'two'])


  it 'should know array references', ->
    array = [ 'zero', 'one', 'two'
              'three', 'four', 'five' ]

    passedByReference = (refArray) -> refArray[1] = 'changed in function'

    passedByReference array
    expect(array[1]).toBe(FILL_ME_IN)

    assignedArray = array
    assignedArray[5] = 'changed in assignedArray'
    expect(array[5]).toBe(FILL_ME_IN)

    copyOfArray = array.slice()
    copyOfArray[3] = 'changed in copyOfArray'
    expect(array[3]).toBe(FILL_ME_IN)


  it 'should push and pop', ->
    array = [1, 2]

    array.push 3
    expect(array).toEqual(FILL_ME_IN)

    poppedValue = array.pop()
    expect(poppedValue).toBe(FILL_ME_IN)
    expect(array).toEqual(FILL_ME_IN)


  it 'should shift arrays', ->
    array = [1, 2]

    array.unshift 3
    expect(array).toEqual(FILL_ME_IN)

    shiftedValue = array.shift()
    expect(shiftedValue).toEqual(FILL_ME_IN)
    expect(array).toEqual(FILL_ME_IN)
