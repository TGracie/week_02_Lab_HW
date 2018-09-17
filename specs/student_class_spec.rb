require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')


class TestStudent < MiniTest::Test

def test_student_name
  student1 = Student.new("Tavy", "E25", " ")
  assert_equal("Tavy", student1.name)
end

def test_student_cohort
  student2 = Student.new("Thomas", "E25", "Ruby")
  assert_equal("Thomas", student2.name)
end

# def test_update_details
# end
#
# def test_student_talking
# end

end
