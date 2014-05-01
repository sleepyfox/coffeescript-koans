should = require('chai').should() # import Chai.js matchers
FILL_ME_IN = 'Fill this value in' # Don't touch this one!

# Note how mocha uses the 'describe' function for a test suite, 
# and the 'it' function for a test
#
# Note also that arguments to functions do not need to be inside
# brackets (parentheses) - these are optional and used either 
# for clarity or where we need to impose an order on evaluation
#
# Functions in coffeeScript are denoted by the 'stabby' or ->
# Whitespace significant
#   A Function (or other block) ends when the indentation level
#   goes back out, just like Python

describe 'About Should', ->
  # We shall contemplate truth by testing reality
  it 'should expect true', ->
    FILL_ME_IN.should.be.true 
    # The first part (FILL_ME_IN) should be 'true' 
    # Note absence of () at the end - true is not a function

  # Sometimes we will ask you to fill in the values
  # Note: 'xit' denotes a pending test
  # change 'xit' to 'it' to enable the test
  xit 'should have filled in values', ->
    FILL_ME_IN.should.equal 1 + 1 
    # Note absence of parentheses around the addition
    # equal(toValue) is a function but brackets are optional

  xit 'should understand type coercion is fixed', ->
    # The 'is' is the same as Javascript's === operator
    (0 is '0').should.be.false # unlike JavaScript's ==
    1.should.be.true # Why not? What should we replace it with?
    # Hint: search the Chai.js docs for 'truthy'

  # To understand reality, we must compare our expectations against reality.
  xit 'should expect equality', ->
    expectedValue = FILL_ME_IN
    actualValue = 1 + 1
    (expectedValue == actualValue).should.be.true
    # == is the same as 'is' i.e. JavaScript's === operator

  # Some ways of asserting equality are better than others.
  xit 'should assert equality a better way', ->
    expectedValue = FILL_ME_IN
    actualValue = 1 + 1
    # Chai's equal() function works like ===
    actualValue.should.equal expectedValue

