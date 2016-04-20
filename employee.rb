# Employee class
class Employee
  attr_reader :name

  def name(name)
    raise "Name can't be blank!" if name == ''
    @name = name
  end

  def print_name
    puts "Employee name: #{@name}"
  end

  def initialize(name = 'Anonymous')
    self.name(name)
  end
end
# SalariedEmployee class
class SalariedEmployee < Employee
  attr_reader :salary

  def print_pay_stub
    print_name
    pay_for_period = (@salary / 365.0) * 14
    pay_for_period = format('$%.2f', pay_for_period)
    puts "Pay This Period: #{pay_for_period}"
  end

  def salary(salary)
    raise "A salary of #{salary} isn't valid!!" if salary < 0
    @salary = salary
  end

  def initialize(name = "Anonymous",salary = 0.0)
    super(name)
    self.salary(salary)
  end
end
# Hourly Employee class
class HourlyEmployee < Employee
  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage(hourly_wage)
    raise "A wage of #{hourly_wage} isn't valid!!" if hourly_wage < 0
    @hourly_wage = hourly_wage
  end

  def hours_per_week(hours_per_week)
    raise "#{hours_per_week} hours is not valid!" if hours_per_week < 0
    @hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = @hourly_wage * @hours_per_week * 2
    pay_for_period = format('$%.2f', pay_for_period)
    puts "Pay This Period: #{pay_for_period}"
  end

  def initialize(name = "Anonymous",hourly_wage = 0.0, hours_per_week = 0.0)
    super(name)
    self.hourly_wage(hourly_wage)
    self.hours_per_week(hours_per_week)
  end

  def self.security_guard(name)
    HourlyEmployee.new(name, 19.25, 30)
  end

  def self.cashier(name)
    HourlyEmployee.new(name, 12.75, 25)
  end

  def self.janitor(name)
    HourlyEmployee.new(name, 10.50, 20)
  end
end
