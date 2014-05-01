should = require('chai').should() # import Chai.js matchers
FILL_ME_IN = 'Fill this value in' # Don't touch this one!

describe 'About Arrays', ->
  describe 'for easier array functionality', ->
    # We shall contemplate truth by testing reality
    it 'should create an array', ->
      emptyArray = []

      (typeof emptyArray).should.equal FILL_ME_IN # A mistake? - http://j.mp/oRuo6R
      emptyArray.should.have.length FILL_ME_IN

    # An array is just one thing after another
    xit 'should understand array literals', ->
      array = []
      array.should.equal [] # Why isn't this so?
      # Hint: == is not the same as ===
      # What matcher should we use instead of equal()?
      # Hint: search the Chai.js docs for 'deep'

      array[0] = 1
      array.should.deep.equal [1]

      array[1] = 2
      array.should.deep.equal [1, FILL_ME_IN]

      array.push(3)
      array.should.deep.equal FILL_ME_IN

    # How long is a piece of string?
    xit 'should understand array length', ->
      fourNumberArray = [1, 2, 3, 4]

      fourNumberArray.should.have.length FILL_ME_IN
      fourNumberArray.push(5, 6)
      fourNumberArray.should.have.length FILL_ME_IN

      tenEmptyElementArray = new Array(10)
      tenEmptyElementArray.should.have.length FILL_ME_IN

      tenEmptyElementArray.length = 5
      tenEmptyElementArray.should.have.length FILL_ME_IN

    # Small fleas have big fleas upon their backs to bite 'em
    # And big fleas have bigger fleas and so on ad infinitum
    xit 'should understand multitype arrays', ->
      multiTypeArray = [0 # newlines substitute for commas in CoffeeScript
                        1
                        'two'
                        -> 3 # anonymous functions can be array elements
                        value1: 4 # is this one object?
                        value2: 5 # or two objects?
                        [6
                        7]]

      multiTypeArray[0].should.equal FILL_ME_IN
      multiTypeArray[2].should.equal FILL_ME_IN
      multiTypeArray[3]().should.equal FILL_ME_IN # Note the parens!
      multiTypeArray[4].value1.should.equal FILL_ME_IN
      multiTypeArray[5][0].should.equal FILL_ME_IN


  describe 'for more complex array functions', ->
    # From here to..there, and back again
    xit 'should understand array ranges', ->
      range = [1..5]
      range.should.deep.equal FILL_ME_IN # Write out all elements

      sdrawkcab = [3..1]
      sdrawkcab.should.deep.equal FILL_ME_IN

    # Not as clumsy or random as a blaster
    xit 'should understand array comprehension', ->
      array = [1, 2, 3]
      accumulator = 0
      for element in array
        accumulator += element

      accumulator.should.deep.equal FILL_ME_IN

    # A weapon for a more civilised age
    xit 'should understand a more compact array comprehension', ->
      array = [1, 2, 3]
      accumulator = 1
      accumulator += element for element in array

      accumulator.should.equal FILL_ME_IN

    # I do not think that word means what you think it means
    xit 'should slice arrays', ->
      array = ['peanut', 'butter', 'and', 'jelly']

      array.slice(0, 1).should.deep.equal FILL_ME_IN
      array.slice(0, 2).should.deep.equal FILL_ME_IN # Not what you thought?
      array.slice(2, 2).should.deep.equal FILL_ME_IN # What? Why?
      array.slice(2).should.deep.equal FILL_ME_IN # end?
      array.slice(2, 20).should.deep.equal FILL_ME_IN
      array.slice(3, 0).should.deep.equal FILL_ME_IN
      array.slice(3, 100).should.deep.equal FILL_ME_IN
      array.slice(5, 1).should.deep.equal FILL_ME_IN
      # Hint: look up http://j.mp/1lD9RXI

    # Much much nicer than Array.slice()
    xit 'should understand range slicing', ->
      oneToTen = [1..10]
      oneToTen[3..5].should.deep.equal FILL_ME_IN

      myString = 'my string'[0..2]
      myString.should.equal FILL_ME_IN

      firstTwo = ['one', 'two', 'three']
      firstTwo[FILL_ME_IN].should.deep.equal(['one', 'two'])

    # A pointer to a thing is not a thing
    xit 'should understand array references', ->
      array = [ 'zero', 'one', 'two'
                'three', 'four', 'five' ]

      passedByReference = (refArray) -> 
        refArray[1] = 'changed in function'

      passedByReference array
      array[1].should.equal FILL_ME_IN

      assignedArray = array
      assignedArray[5] = 'changed in assignedArray'
      array[5].should.equal FILL_ME_IN # Why?

      copyOfArray = array.slice()
      copyOfArray[3] = 'changed in copyOfArray'
      array[3].should.equal FILL_ME_IN # Why?

    xit 'should push and pop', ->
      array = [1, 2]

      array.push 'weasel'
      array.should.deep.equal FILL_ME_IN

      poppedValue = array.pop()
      poppedValue.should.equal FILL_ME_IN
      array.should.deep.equal FILL_ME_IN

    xit 'should shift arrays', ->
      array = [1, 2]

      array.unshift 3
      array.should.deep.equal FILL_ME_IN

      shiftedValue = array.shift()
      shiftedValue.should.equal FILL_ME_IN
      array.should.deep.equal FILL_ME_IN
