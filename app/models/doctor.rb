class Doctor < ApplicationRecord

	def self.search(search)
		if search
			where('location ILIKE ? OR specialty ILIKE ? OR name ILIKE ?', "%#{search}", "%#{search}", "%#{search}")
		else
			all
		end
	end

	def find_similar_providers(provider)
		doctors = Doctor.where(location: provider.location, specialty: provider.specialty).where.not(name: provider.name).limit(5)
		return doctors.sort_by { |x| x.rating }.reverse
	end
	
end
