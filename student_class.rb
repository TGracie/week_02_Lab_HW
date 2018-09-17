class Student

attr_accessor :name, :cohort
attr_reader :language

def initialize(input_name, input_cohort, input_language)
  @name = input_name
  @cohort = input_cohort
  @language = input_language
end

def print_details
  puts "My name is #{@name} and I'm in Cohort #{@cohort}"
end


def favourite_language
  puts ""
end

end
