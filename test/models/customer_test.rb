require 'test_helper'

describe Customer do
  # before do
  #   @bob = customers(:bob)
  # end

  let(:bob) {customers(:bob)}
  let(:bil) {customers(:bil)}
  let(:jan) {customers(:jan)}

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
end
