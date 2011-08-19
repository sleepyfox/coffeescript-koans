class Muppet
  constructor: (@age, @hobby) ->
  answerNanny: -> "Everything's cool!"

class SwedishChef extends Muppet
  constructor: (age, hobby, @mood) ->
    super(age, hobby)
  cook: -> 'Mmmm soup!'

describe 'About inheritance', ->
  beforeEach ->
    @muppet = new Muppet 2, 'coding'
    @swedishChef = new SwedishChef 3, 'cooking', 'chillin'

  it 'should be able to call a method on the derived object', ->
    (expect @swedishChef.cook()).toEqual(FILL_ME_IN)

  it 'should be able to call a method on the base object', ->
    (expect @swedishChef.answerNanny()).toEqual(FILL_ME_IN)

  it 'should set constructor parameters on the base object', ->
    (expect @swedishChef.age).toEqual(FILL_ME_IN)
    (expect @swedishChef.hobby).toEqual(FILL_ME_IN)

  it 'should set constructor parameters on the derived object', ->
    (expect @swedishChef.mood).toEqual(FILL_ME_IN)

  it 'should allow instances to override class methods', ->
    gonzo = new Muppet 3, 'daredevil performer'
    gonzo.answerNanny = -> 'Hehehe!'
    (expect gonzo.answerNanny()).toBe(FILL_ME_IN)
    (expect @muppet.answerNanny()).toBe(FILL_ME_IN)

  it 'should allow derived classes to override base classes', ->
    class DanishChef extends SwedishChef
      cook: -> 'Sizzle'
    redzepi = new DanishChef 30, 'foraging', 'happy'
    (expect redzepi.cook()).toBe(FILL_ME_IN)
    (expect @swedishChef.cook()).toBe(FILL_ME_IN)
