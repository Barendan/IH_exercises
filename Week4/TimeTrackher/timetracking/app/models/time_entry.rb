class TimeEntry < ApplicationRecord
	belongs_to :project

	validates_associated :project
	validates :hours, numericality: { only_integer: true }
	validates :minutes, numericality: { only_integer: true }
	validates :date, presence: true
	validates :hours, presence: true
	validates :minutes, presence: true
end

# the_entry = TimeEntry.create(
	# :hours => 1,
	# :minutes => 45,
	# :comment => "did stuff",
	# :date => Time.new,
	# :project_id => 1)

# the id of the project to associate to is the project_id
