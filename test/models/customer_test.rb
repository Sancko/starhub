require 'test_helper'

describe Customer do
  # before do
  #   @bob = customers(:bob)
  # end

  let(:bob) {customers(:bob)}
  let(:jack) {customers(:jack)}
  let(:jan) {customers(:jan)}
  let(:bil) {customers(:bil)}

  describe 'validation' do
    it 'is valid customer'do
      expect(bob).must_be :valid?
    end
    it 'has already be taken' do
      expect(bil).must_be :invalid?
      expect(bil.errors[:username]).must_include "has already been taken"
    end

    it 'can’t be blank' do
      expect(jan).must_be :invalid?
      expect(jan.errors[:last_name]).must_include "can't be blank"
    end
  end

  describe 'has reviews' do
    it 'bob has many reviews' do
      expect(bob.reviews.size).must_equal 3
    end

    it 'bil has no reviews' do
      expect(bil.reviews.count).must_equal 0
    end
  end

  describe 'has issues' do
    it 'bob has many issues' do
      expect(bob.issues.size).must_equal 2
    end
    it 'bil has no issues'do
      expect(bil.issues.size).must_equal 0
    end
  end

  describe 'has product_reviews' do
    it 'jeck has many product_reviews' do
      expect (jack.product_reviews.uniq.pluck(:name).size).must_equal 2
    end
  end

  describe 'has problem_products' do
    it 'jeck has many problem_products' do
      expect (bob.problem_products.uniq.pluck(:name).size).must_equal 1
    end
  end

end
