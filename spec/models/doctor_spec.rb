require 'rails_helper'

RSpec.describe Doctor, type: :model do
  
  describe 'doctor#search' do
  	it 'should return an array of matching records in the database' do
  		doctor = FactoryBot.create(:doctor, location: 'Oakland')
  		results = Doctor.search('Oakland')
  		expect(results).to eq([doctor])
  	end

  	it 'should return an empty array if there are no matches' do
  		results = Doctor.search('Redwood City')
  		expect(results).to eq([])
  	end
  end

  describe 'doctor#find_similar_providers' do
  	it 'should return an array of doctors with the same location and specialty' do
  		doctor1 = FactoryBot.create(:doctor, name: 'John Smith', id: 1, location: 'San Francisco', specialty: 'Internal Medicine', rating: 3.7)
  		doctor2 = FactoryBot.create(:doctor, name: 'Maggie Gray', id: 2, location: 'San Francisco', specialty: 'Internal Medicine', rating: 4.1)
  		doctor3 = FactoryBot.create(:doctor, name: 'Michael Jones',id: 3, location: 'San Francisco', specialty: 'Internal Medicine', rating: 3.9)
  		doctor4 = FactoryBot.create(:doctor, name: 'Kelly Arnold', id: 4, location: 'San Francisco', specialty: 'Internal Medicine', rating: 4.4)
  		results = doctor1.find_similar_providers(doctor1)
  		expect(results).to eq([doctor4, doctor2, doctor3])
  	end
  end
end
