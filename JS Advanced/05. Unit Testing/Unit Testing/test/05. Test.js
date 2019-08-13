let expect = require('chai').expect;
const isSymmetric = require('../5. Check for isSymmetric');

describe("isSymmetric tests", function() {
    it("Should return true for [1,2,3,3,2,1]", function () {
        expect(isSymmetric([1,2,3,3,2,1])).to.be.equal(true);
    });

    it("Should return false for [1,2,3,4,2,1]", function () {
        expect(isSymmetric([1,2,3,4,2,1])).to.be.equal(false);
    });

    it("Should return true for [-1,2,-1]", function () {
        expect(isSymmetric([-1,2,-1])).to.be.equal(true);
    });

    it("Should return false for [-1,2,1]", function () {
        expect(isSymmetric([-1,2,1])).to.be.equal(false);
    });

    it("Should return false for [1,2]", function () {
        expect(isSymmetric([1,2])).to.be.equal(false);
    });

    it("Should return true for [1]", function () {
        expect(isSymmetric([1])).to.be.equal(true);
    });

    it("Should return true for [test]", function () {
        expect(isSymmetric(['test'])).to.be.equal(true);
    });

    it("Should return true for []", function () {
        expect(isSymmetric([])).to.be.equal(true);
    });

    it("Should return true for [5,'hi',{a:5},new Date(),{a:5},'hi',5]", function () {
        expect(isSymmetric([5,'hi',{a:5},new Date(),{a:5},'hi',5])).to.be.equal(true);
    });

    it("Should return false for [5,'hi',{a:5},new Date(),{X:5},'hi',5]", function () {
        expect(isSymmetric([5,'hi',{a:5},new Date(),{X:5},'hi',5])).to.be.equal(false);
    });

    it("Should return false for 1,2,2,1", function () {
        expect(isSymmetric(1,2,2,1)).to.be.equal(false);
    });
});
