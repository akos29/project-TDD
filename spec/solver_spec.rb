require './solver'

RSpec.describe Solver do 
  describe '#factorial' do 
    it 'returns an integer' do
      expect(subject.factorial).to be_integer
    end
  end
end