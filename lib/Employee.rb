class Employee
  attr_reader :name
  attr_accessor :manager, :salary

  @@all = []

  def initialize(name, salary)
    @name, @salary = name, salary

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods for returning data
  def manager_name
    manager.name
  end

  def tax_bracket
    self.class.all.select do |employee|
      employee != self && ((employee.salary >= salary - 1000) && (employee.salary <= salary + 1000))
    end
  end

  #Class methods for aggregating data
  def self.paid_over(salary)
    all.select { |employee| employee.salary > salary }
  end

  def self.find_by_department(department_name)
    all.find { |employee| employee.manager.department == department_name }
  end

end
