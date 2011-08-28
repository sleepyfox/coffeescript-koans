describe 'About Mutability', ->
  it 'should expect object properties to be public and mutable', ->
    aPerson = firstname: 'John', lastname: 'Smith'

    aPerson.firstname = 'Alan'
    expect(aPerson.firstname).toBe(FILL_ME_IN)


  it 'should understand that constructed properties are public and mutable', ->
    Person = (firstname, lastname) ->
      @firstname = firstname
      @lastname = lastname

    aPerson = new Person 'John', 'Smith'
    aPerson.firstname = 'Alan'
    expect(aPerson.firstname).toBe(FILL_ME_IN)


  it 'should expect prototype properties to be public and mutable', ->
    Person = (firstname, lastname) ->
      @firstname = firstname
      @lastname = lastname
    Person::getFullName = -> @firstname + ' ' + @lastname

    aPerson = new Person 'John', 'Smith'
    expect(aPerson.getFullName()).toBe(FILL_ME_IN)

    aPerson.getFullName = -> @lastname + ', ' + @firstname
    expect(aPerson.getFullName()).toBe(FILL_ME_IN)


  it 'should know that variables inside constructor and constructor args are private', ->
    Person = (firstname, lastname) ->
      fullName = firstname + ' ' + lastname
      @getFirstName = -> firstname
      @getLastName = -> lastname
      @getFullName = -> fullName
      @

    aPerson = new Person 'John', 'Smith'
    aPerson.firstname = 'Penny'
    aPerson.lastname = 'Andrews'
    aPerson.fullName = 'Penny Andrews'
    expect(aPerson.getFirstName()).toBe(FILL_ME_IN)
    expect(aPerson.getLastName()).toBe(FILL_ME_IN)
    expect(aPerson.getFullName()).toBe(FILL_ME_IN)

    aPerson.getFullName = -> aPerson.lastname + ', ' + aPerson.firstname
    expect(aPerson.getFullName()).toBe(FILL_ME_IN)
