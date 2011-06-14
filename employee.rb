class Employee  
  attr_accessor :name
  def initialize(name, pay_rate)
    @name = name
    @pay_rate = pay_rate
  end
  
  def print_company
    puts "Works at EdgeCase"
  end
  
  def print_clearance
    puts "None"
  end
end

class HourlyEmployee < Employee
  def pay(hours)
    puts "Paid hourly employee #{@name} $#{@pay_rate * hours}"
  end
  
  def promote_to_salary
    SalaryEmployee.new(@name, @pay_rate * 40 * 52 + 10000)
  end
end

class SalaryEmployee < Employee
  def pay
    puts "Paid salary employee #{@name} $#{@pay_rate / 26}"
  end
end

class SecretSalaryEmployee < SalaryEmployee
  def print_clearance
    puts "SUPER SECRET"
  end
end

secret_employee = SecretSalaryEmployee.new("Bob", 2000000)
employee = SalaryEmployee.new("Tyler", 100000)
secret_employee.print_company
employee.print_company

secret_employee.pay
employee.pay

secret_employee.print_clearance
employee.print_clearance


#employee1.pay

#employee2 = HourlyEmployee.new("Mary", 7)
#employee2.pay(40)
#puts employee2.class
##employee2 = employee2.promote_to_salary
#puts employee2.class
#employee2.pay
