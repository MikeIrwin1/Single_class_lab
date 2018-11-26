class Student

  attr_reader :name, :cohort
  attr_writer :name, :cohort
  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end

  def phrase
    return "I can talk!"
  end

  def fave_lang(language)
    return 'I love ' + language + '!'
  end
end
