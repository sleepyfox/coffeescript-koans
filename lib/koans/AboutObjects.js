(function() {
  describe('About Objects', function() {
    describe('Properties', function() {
      beforeEach(function() {
        var meglomaniac;
        return meglomaniac = {
          mastermind: 'Joker',
          henchwoman: 'Harley'
        };
      });
      it('should confirm objects are collections of properties', function() {
        return expect(meglomaniac.mastermind).toBe(FILL_ME_IN);
      });
      return it('should confirm that properties are case sensitive', function() {
        expect(meglomaniac.henchwoman).toBe(FILL_ME_IN);
        return expect(meglomaniac.henchWoman).toBe(FILL_ME_IN);
      });
    });
    it('should know properties that are functions act like methods', function() {
      var battleCry, meglomaniac;
      meglomaniac = {
        mastermind: 'Brain',
        henchman: 'Pinky',
        battleCry: function(noOfBrains) {
          return 'They are ' + this.henchman + ' and the' + Array(noOfBrains + 1).join(' ' + this.mastermind);
        }
      };
      battleCry = meglomaniac.battleCry(4);
      return expect(FILL_ME_IN).toMatch(battleCry);
    });
    it("should confirm that when a function is attached to an object, 'this' refers to the object", function() {
      var currentYear, meglomaniac;
      currentYear = 2011;
      meglomaniac = {
        mastermind: 'James Wood',
        henchman: 'Adam West',
        birthYear: 1970,
        calculateAge: function() {
          return currentYear - this.birthYear;
        }
      };
      expect(currentYear).toBe(FILL_ME_IN);
      return expect(meglomaniac.calculateAge()).toBe(FILL_ME_IN);
    });
    describe("'in' keyword", function() {
      var meglomaniac;
      meglomaniac = {};
      beforeEach(function() {
        return meglomaniac = {
          mastermind: 'The Monarch',
          henchwoman: 'Dr Girlfriend',
          theBomb: true
        };
      });
      it('should have the bomb', function() {
        var hasBomb;
        hasBomb = meglomaniac.theBomb != null;
        return expect(hasBomb).toBe(FILL_ME_IN);
      });
      return it('should not have the detonator however', function() {
        var hasDetonator;
        hasDetonator = meglomaniac.theDetonator != null;
        return expect(hasDetonator).toBe(FILL_ME_IN);
      });
    });
    it('should know that properties can be added and deleted', function() {
      var meglomaniac;
      meglomaniac = {
        mastermind: 'Agent Smith',
        henchman: 'Agent Smith'
      };
      expect(meglomaniac.secretary != null).toBe(FILL_ME_IN);
      meglomaniac.secretary = 'Agent Smith';
      expect(meglomaniac.secretary != null).toBe(FILL_ME_IN);
      delete meglomaniac.henchman;
      return expect(meglomaniac.henchman != null).toBe(FILL_ME_IN);
    });
    return it('should use prototype to add to all objects', function() {
      var Circle, colouredCircle, simpleCircle;
      Circle = function(radius) {
        return this.radius = radius;
      };
      simpleCircle = new Circle(10);
      colouredCircle = new Circle(5);
      colouredCircle.colour = 'red';
      expect(simpleCircle.colour).toBe(FILL_ME_IN);
      expect(colouredCircle.colour).toBe(FILL_ME_IN);
      Circle.prototype.describe = function() {
        return 'This circle has a radius of: ' + this.radius;
      };
      expect(simpleCircle.describe()).toBe(FILL_ME_IN);
      return expect(colouredCircle.describe()).toBe(FILL_ME_IN);
    });
  });
}).call(this);
