# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


zen_hr = Company.create!(
    name: "ZenHR"
)

akhtaboot = Company.create!(
    name: "Akhtaboot"
)


amman_branch_zenhr= Branch.create!(
    name: "Amman Branch",
    location: "Amman",
    company: zen_hr,
)

dubai_branch_zenhr= Branch.create!(
    name: "Dubai Branch",
    location: "Dubai",
    company: zen_hr
)


emp_1_amman = Employee.create!(
    name: "Employee 1 Amman",
    email: "employee1amman@test.com",
    hire_date: "1-1-2025",
    employment_number: 11111111,
    branch: amman_branch_zenhr
)

emp_2_amman = Employee.create!(
    name: "Employee 2 Amman",
    email: "employee2amman@test.com",
    hire_date: "17-4-2019",
    employment_number: 12121212,
    branch: amman_branch_zenhr
)



emp_terminated_amman = Employee.create!(
    name: "Employee terminated Amman",
    email: "employeeterminatedamman@test.com",
    hire_date: "10-2-2024",
    employment_number: 11112222,
    branch: amman_branch_zenhr
)

emp_1_dubai = Employee.create!(
    name: "Employee 1 Dubai",
    email: "employee1dubai@test.com",
    hire_date: "28-11-2021",
    employment_number: 69364582,
    branch: dubai_branch_zenhr
)

emp_1_dubai = Employee.create!(
    name: "Employee 2 Dubai",
    email: "employee2dubai@test.com",
    hire_date: "8-7-2025",
    employment_number: 51365211,
    branch: dubai_branch_zenhr
)

emp_3_dubai = Employee.create!(
    name: "Employee 3 Dubai",
    email: "employee3dubai@test.com",
    hire_date: "13-6-2017",
    employment_number: 82384923,
    branch: dubai_branch_zenhr
)

terminated_amman = Termination.create!(
    date: "31-12-2024",
    employee: emp_terminated_amman,
)

employee_1_amman_financial_package_1 = FinancialPackage.create!(
    from_date: "1-1-2023",
    to_date: "31-12-2023",
    amount: 500,
    employee: emp_1_amman
)

employee_1_amman_financial_package_2 = FinancialPackage.create!(
    from_date: "1-1-2024",
    to_date: "31-12-2024",
    amount: 600,
    employee: emp_1_amman
)

employee_2_amman_financial_package_1 = FinancialPackage.create!(
    from_date: "1-1-2023",
    to_date: "31-12-2023",
    amount: 500,
    employee: emp_2_amman
)

employee_1_amman_financial_package_2 = FinancialPackage.create!(
    from_date: "1-1-2024",
    to_date: "31-12-2024",
    amount: 600,
    employee: emp_2_amman
)

room_1_amman = Room.create!(
    name: "Amman Meeting Room 1",
    branch: amman_branch_zenhr
)

room_2_amman = Room.create!(
    name: "Amman Meeting Room 2",
    branch: amman_branch_zenhr
)

emp_1_amman.rooms << room_1_amman

emp_2_amman.rooms << amman_branch_zenhr.rooms

