# Employee class
class Employee
  attr_reader :name, :salary

  def name(name)
    raise "Name can't be blank!" if name == ''
    @name = name
  end

  def salary(salary)
    raise "A salary of #{salary} isn't valid!!" if salary < 0
    @salary = salary
  end

  def initialize(name = 'Anonymouse', salary = 0.0)
    self.name(name)
    self.salary(salary)
  end

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14
    pay_for_period = format('$%.2f', pay_for_period)
    puts "Pay This Period: #{pay_for_period}"
  end
end
