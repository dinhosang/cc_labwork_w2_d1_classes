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

def test_set_name
  new_name = 'Fred'
  @student.set_name(new_name)
  assert_equal('Fred', @student.get_name())
end

def test_set_cohort
  new_cohort = 19
  @student.set_cohort(new_cohort)
  assert_equal(19, @student.get_cohort())
end

def test_student_talk
  string_to_say = "Hi there"
  assert_equal("John says: 'Hi there'", @student.student_talk(string_to_say))
end

def test_say_favourite_language()
  favourite_language1 = 'Ruby'
  favourite_language2 = 'Python'
  assert_equal('I love Ruby', @student.say_favourite_language(favourite_language1))
  assert_equal('I love Python', @student.say_favourite_language(favourite_language2))
end

end
