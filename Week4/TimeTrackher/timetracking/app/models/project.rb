class Project < ApplicationRecord
	has_many :time_entries

	def self.clean_old
		Project.where("created_at < ?",1.week.ago).destroy_all
	end

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {maximum: 30 }
	validates :name, format: { with: /[a-zA-Z]?\d* ?/}
end

# the_project = Project.find_By(id: 1)
# the_project.time_entries


