module Weather

	def generator
		@number = rand(100)
	end

	# def weather
	# 	@weather = []
	# end

	# def weather
	# 	if number > 15
	# 		condition == sunny
	# 	else
	# 		condition == stormy
	# 	end
	# end

	def sunny?
		generator >= 15
	end

	def stormy?()
		generator < 15
	end

end



	