require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
carl = Manager.new("Carl", 37)
carl.department = "Accounting"

bob = Manager.new("Bob", 35)
bob.department = "Burrito Tossing"

karen = Employee.new("Karen", 45000)
karen.manager = carl

srinivasan = Employee.new("Srini", 46000)

binding.pry
puts "done"
