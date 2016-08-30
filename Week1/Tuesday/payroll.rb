
class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      return @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, annual_salary)
        @name = name
        @email = email
        @annual_salary = annual_salary
    end

    def calculate_salary
      return @annual_salary / 52
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, annual_salary, hourly_rate, overtime)
        @name = name
        @email = email
        @annual_salary = annual_salary
        @hourly_rate = hourly_rate
        @overtime = overtime
    end

    def calculate_salary
      return ((@annual_salary / 52) + (@hourly_rate * @overtime)) * 1.18
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end
    
    def notify_employee(employee)
      puts "#{employee.email} You just got paid #{employee.name}."
    end

  def pay_employees
    total_payroll = @employees.reduce(0) do |sum, e|
      p "#{e.name} => #{(e.calculate_salary * 1.18).round(1)}"
      
      sum + e.calculate_salary.round(1)
    end
    
    puts "Total Payroll: #{total_payroll}"
    
  end
  
end



josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
daniel = HourlyEmployee.new('Daniel', "barendan@gmail.com", 40, 60)
john = HourlyEmployee.new('John', "john.glynn@outlook.com", 40, 15)


employees = [josh, nizar, ted, daniel, john]
payroll = Payroll.new(employees)
payroll.pay_employees
# josh => 1750
# nizar => 19230
# etc
# etc

#-----------------------------------------------------------------


# josh.calculate_salary
# nizar.calculate_salary
# ted.calculate_salary
# daniel.calculate_salary
# john.calculate_salary

