class Employee < ApplicationRecord

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Employee.create! row.to_hash
		end
	end
end
