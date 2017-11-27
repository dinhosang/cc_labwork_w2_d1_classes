require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')

# Class called Student that takes in a name (String) and a
# cohort (integer) when an new instance is created.

class TestStudent < MiniTest::Test


def setup
  @student = Student.new('John',18)

end

def test_get_name
  assert_equal('John', @student.get_name())
end

def test_get_cohort
  assert_equal(18, @student.get_cohort())
end

def test_set_name(name)
  
end

end
