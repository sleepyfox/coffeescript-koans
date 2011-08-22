(function() {
  var Muppet, SwedishChef;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  Muppet = (function() {
    function Muppet(age, hobby) {
      this.age = age;
      this.hobby = hobby;
    }
    Muppet.prototype.answerNanny = function() {
      return "Everything's cool!";
    };
    return Muppet;
  })();
  SwedishChef = (function() {
    __extends(SwedishChef, Muppet);
    function SwedishChef(age, hobby, mood) {
      this.mood = mood;
      SwedishChef.__super__.constructor.call(this, age, hobby);
    }
    SwedishChef.prototype.cook = function() {
      return 'Mmmm soup!';
    };
    return SwedishChef;
  })();
  describe('About inheritance', function() {
    beforeEach(function() {
      this.muppet = new Muppet(2, 'coding');
      return this.swedishChef = new SwedishChef(3, 'cooking', 'chillin');
    });
    it('should be able to call a method on the derived object', function() {
      return (expect(this.swedishChef.cook())).toEqual(FILL_ME_IN);
    });
    it('should be able to call a method on the base object', function() {
      return (expect(this.swedishChef.answerNanny())).toEqual(FILL_ME_IN);
    });
    it('should set constructor parameters on the base object', function() {
      (expect(this.swedishChef.age)).toEqual(FILL_ME_IN);
      return (expect(this.swedishChef.hobby)).toEqual(FILL_ME_IN);
    });
    it('should set constructor parameters on the derived object', function() {
      return (expect(this.swedishChef.mood)).toEqual(FILL_ME_IN);
    });
    it('should allow instances to override class methods', function() {
      var gonzo;
      gonzo = new Muppet(3, 'daredevil performer');
      gonzo.answerNanny = function() {
        return 'Hehehe!';
      };
      (expect(gonzo.answerNanny())).toBe(FILL_ME_IN);
      return (expect(this.muppet.answerNanny())).toBe(FILL_ME_IN);
    });
    return it('should allow derived classes to override base classes', function() {
      var DanishChef, redzepi;
      DanishChef = (function() {
        __extends(DanishChef, SwedishChef);
        function DanishChef() {
          DanishChef.__super__.constructor.apply(this, arguments);
        }
        DanishChef.prototype.cook = function() {
          return 'Sizzle';
        };
        return DanishChef;
      })();
      redzepi = new DanishChef(30, 'foraging', 'happy');
      (expect(redzepi.cook())).toBe(FILL_ME_IN);
      return (expect(this.swedishChef.cook())).toBe(FILL_ME_IN);
    });
  });
}).call(this);
