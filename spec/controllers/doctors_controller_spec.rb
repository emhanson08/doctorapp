require 'rails_helper'

RSpec.describe DoctorsController, type: :controller do
	describe 'doctors#index' do
		it 'should successfully take the user to the doctor search page' do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe 'doctors#show' do
		it 'should successfully render the doctor show page' do
			doctor = FactoryBot.build(:doctor, id: 1)
			get :show, params: { id: doctor.id }
			expect(response).to have_http_status(:success)
		end
	end
end
