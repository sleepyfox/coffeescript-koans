(function() {
  describe('About Mutability', function() {
    it('should expect object properties to be public and mutable', function() {
      var aPerson;
      aPerson = {
        firstname: 'John',
        lastname: 'Smith'
      };
      aPerson.firstname = 'Alan';
      return expect(aPerson.firstname).toBe(FILL_ME_IN);
    });
    it('should understand that constructed properties are public and mutable', function() {
      var Person, aPerson;
      Person = function(firstname, lastname) {
        this.firstname = firstname;
        return this.lastname = lastname;
      };
      aPerson = new Person('John', 'Smith');
      aPerson.firstname = 'Alan';
      return expect(aPerson.firstname).toBe(FILL_ME_IN);
    });
    it('should expect prototype properties to be public and mutable', function() {
      var Person, aPerson;
      Person = function(firstname, lastname) {
        this.firstname = firstname;
        return this.lastname = lastname;
      };
      Person.prototype.getFullName = function() {
        return this.firstname + ' ' + this.lastname;
      };
      aPerson = new Person('John', 'Smith');
      expect(aPerson.getFullName()).toBe(FILL_ME_IN);
      aPerson.getFullName = function() {
        return this.lastname + ', ' + this.firstname;
      };
      return expect(aPerson.getFullName()).toBe(FILL_ME_IN);
    });
    return it('should know that variables inside constructor and constructor args are private', function() {
      var Person, aPerson;
      Person = function(firstname, lastname) {
        var fullName;
        fullName = firstname + ' ' + lastname;
        this.getFirstName = function() {
          return firstname;
        };
        this.getLastName = function() {
          return lastname;
        };
        return this.getFullName = function() {
          return fullName;
        };
      };
      aPerson = new Person('John', 'Smith');
      aPerson.firstname = 'Penny';
      aPerson.lastname = 'Andrews';
      aPerson.fullName = 'Penny Andrews';
      expect(aPerson.getFirstName()).toBe(FILL_ME_IN);
      expect(aPerson.getLastName()).toBe(FILL_ME_IN);
      expect(aPerson.getFullName()).toBe(FILL_ME_IN);
      aPerson.getFullName = function() {
        return aPerson.lastname + ', ' + aPerson.firstname;
      };
      return expect(aPerson.getFullName()).toBe(FILL_ME_IN);
    });
  });
}).call(this);
