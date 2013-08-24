require "date"
require "bundler"
Bundler.require :default, :environment

before do
	# Actual Graduation
	@grad = Date.new(2014, 6, 17)
	# Testing Graduation
	# @grad = DateTime.now
end

helpers do
	def isigy()
		now = DateTime.now
		if now.day == @grad.day and now.year == @grad.year and now.month == @grad.month then
			"Yes."
		else
			"No."
		end
	end
end

get '/' do
	erb :index
end