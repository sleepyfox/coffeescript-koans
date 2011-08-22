(function() {
  describe('About Arrays', function() {
    it('should create arrays', function() {
      var emptyArray;
      emptyArray = [];
      expect(typeof emptyArray).toBe(FILL_ME_IN);
      return expect(emptyArray.length).toBe(FILL_ME_IN);
    });
    it('should understand array literals', function() {
      var array;
      array = [];
      expect(array).toEqual([]);
      array[0] = 1;
      expect(array).toEqual([1]);
      array[1] = 2;
      expect(array).toEqual([1, FILL_ME_IN]);
      array.push(3);
      return expect(array).toEqual(FILL_ME_IN);
    });
    it('should understand array length', function() {
      var fourNumberArray, tenEmptyElementArray;
      fourNumberArray = [1, 2, 3, 4];
      expect(fourNumberArray.length).toBe(FILL_ME_IN);
      fourNumberArray.push(5, 6);
      expect(fourNumberArray.length).toBe(FILL_ME_IN);
      tenEmptyElementArray = new Array(10);
      expect(tenEmptyElementArray.length).toBe(FILL_ME_IN);
      tenEmptyElementArray.length = 5;
      return expect(tenEmptyElementArray.length).toBe(FILL_ME_IN);
    });
    it('should understand multitype arrays', function() {
      var multiTypeArray;
      multiTypeArray = [
        0, 1, 'two', function() {
          return 3;
        }, {
          value1: 4,
          value2: 5
        }, [6, 7]
      ];
      expect(multiTypeArray[0]).toBe(FILL_ME_IN);
      expect(multiTypeArray[2]).toBe(FILL_ME_IN);
      expect(multiTypeArray[3]()).toBe(FILL_ME_IN);
      expect(multiTypeArray[4].value1).toBe(FILL_ME_IN);
      return expect(multiTypeArray[5][0]).toBe(FILL_ME_IN);
    });
    it('should understand array ranges', function() {
      var range, sdrawkcab;
      range = [1, 2, 3, 4, 5];
      expect(range).toEqual(FILL_ME_IN);
      sdrawkcab = [3, 2, 1];
      return expect(sdrawkcab).toEqual(FILL_ME_IN);
    });
    it('should understand array comprehension', function() {
      var accumulator, array, element, _i, _len;
      array = [1, 2, 3];
      accumulator = 0;
      for (_i = 0, _len = array.length; _i < _len; _i++) {
        element = array[_i];
        accumulator += element;
      }
      return expect(accumulator).toEqual(FILL_ME_IN);
    });
    it('should understand a more compact array comprehension', function() {
      var accumulator, array, element, _i, _len;
      array = [1, 2, 3];
      accumulator = 1;
      for (_i = 0, _len = array.length; _i < _len; _i++) {
        element = array[_i];
        accumulator += element;
      }
      return expect(accumulator).toEqual(FILL_ME_IN);
    });
    it('should slice arrays', function() {
      var array;
      array = ["peanut", "butter", "and", "jelly"];
      expect(array.slice(0, 1)).toEqual(FILL_ME_IN);
      expect(array.slice(0, 2)).toEqual(FILL_ME_IN);
      expect(array.slice(2, 2)).toEqual(FILL_ME_IN);
      expect(array.slice(2, 20)).toEqual(FILL_ME_IN);
      expect(array.slice(3, 0)).toEqual(FILL_ME_IN);
      expect(array.slice(3, 100)).toEqual(FILL_ME_IN);
      return expect(array.slice(5, 1)).toEqual(FILL_ME_IN);
    });
    it('should understand range slicing', function() {
      var firstTwo, myString, oneToTen;
      oneToTen = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      expect(oneToTen.slice(3, 6)).toEqual(FILL_ME_IN);
      myString = "my string".slice(0, 3);
      expect(myString).toEqual(FILL_ME_IN);
      firstTwo = ['one', 'two', 'three'];
      return expect(firstTwo[FILL_ME_IN]).toEqual(['one', 'two']);
    });
    it('should know array references', function() {
      var array, assignedArray, copyOfArray, passedByReference;
      array = ['zero', 'one', 'two', 'three', 'four', 'five'];
      passedByReference = function(refArray) {
        return refArray[1] = 'changed in function';
      };
      passedByReference(array);
      expect(array[1]).toBe(FILL_ME_IN);
      assignedArray = array;
      assignedArray[5] = 'changed in assignedArray';
      expect(array[5]).toBe(FILL_ME_IN);
      copyOfArray = array.slice();
      copyOfArray[3] = 'changed in copyOfArray';
      return expect(array[3]).toBe(FILL_ME_IN);
    });
    it('should push and pop', function() {
      var array, poppedValue;
      array = [1, 2];
      array.push(3);
      expect(array).toEqual(FILL_ME_IN);
      poppedValue = array.pop();
      expect(poppedValue).toBe(FILL_ME_IN);
      return expect(array).toEqual(FILL_ME_IN);
    });
    return it('should shift arrays', function() {
      var array, shiftedValue;
      array = [1, 2];
      array.unshift(3);
      expect(array).toEqual(FILL_ME_IN);
      shiftedValue = array.shift();
      expect(shiftedValue).toEqual(FILL_ME_IN);
      return expect(array).toEqual(FILL_ME_IN);
    });
  });
}).call(this);
