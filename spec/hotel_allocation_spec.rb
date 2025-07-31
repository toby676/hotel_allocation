require_relative '../hotel_allocation'

RSpec.describe 'it works' do
  describe '#allocate_rooms' do
    it 'allocates one customer staying one night room 1' do
      customers = [[1,1]]
      expect(allocate_rooms(customers)).to eq [1]
    end

    it 'allocates two customer staying one night on day 1 room 1 and room 2' do
      customers = [[1,1], [1,1]]
      expect(allocate_rooms(customers)).to eq [1,2]
    end
  end
end