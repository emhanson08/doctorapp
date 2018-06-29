class DoctorsController < ApplicationController
	def index
		@doctors = Doctor.all
	end

	def new
		@doctor = Doctor.new
	end

	def create
		@doctor = Doctor.create(doctor_params)
		redirect_to doctors_path
	end

	def show
		@doctor = Doctor.find_by_id(params[:id])
	end

	def search
		if params[:search]
			@doctors = Doctor.search(params[:search])
		else
			@doctors = Doctor.all.order("name").paginate(page: params[:page], per_page: 10)
		end
	end

	private

	def doctor_params
		params.require(:doctor).permit(:name, :location, :specialty, :rating, :description)
	end
end
