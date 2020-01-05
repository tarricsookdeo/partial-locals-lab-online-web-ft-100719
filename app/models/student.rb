class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students

  def self.search(query)
    if query.present?
      Student.where("name LIKE ?", "%#{query}%")
    else
      Student.all
    end
  end
end