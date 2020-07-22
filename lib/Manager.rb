class Manager
  attr_reader :name, :age
  attr_accessor :department

  @@all = []

  def initialize(name, age)
    @name, @age = name, age

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Class methods to aggregate data
  def self.all_departments
    all.map(&:department)
  end

  def self.average_age
    (all.map(&:age).sum.to_f / all.length).round(1)
  end

  #Instance methods for gathering data
  def employees
    Employee.all.select { |employee| employee.manager == self }
  end

  
end
