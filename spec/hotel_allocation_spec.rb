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

    it 'handles n customers' do
      customers = [[1,1], [1,1], [1,1]]
      expect(allocate_rooms(customers)).to eq [1,2,3]
    end

    it 'handles re-using rooms' do
      customers = [[1,1], [1,1], [2,2]]
      expect(allocate_rooms(customers)).to eq [1,2,1]
    end

    it 'multi night stays' do
      customers = [[1,2], [3,4], [1,4]]
      expect(allocate_rooms(customers)).to eq [1,1,2]
    end
  end
end