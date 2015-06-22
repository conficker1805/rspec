class Time
  def self.diff(from, to, format = :hours)
		# Input params:
		 	# from, to:   12:00 AM | 12:00 PM | 23:00)
			# format:     	:hours | :minutes

  	@minutes = Time.parse(to) - Time.parse(from)
  	format == :minutes ? @minutes / 60 : @minutes / 3600
  end
end