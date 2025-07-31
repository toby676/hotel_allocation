require_relative '../hotel_allocation'

RSpec.describe 'it works' do
  describe '#allocate_rooms' do
    it 'allocates one customer staying one night room 1' do
      customers = [1,1]
      expect(allocate_rooms(customers)).to eq [1]
    end
  end
end