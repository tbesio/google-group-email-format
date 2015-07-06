require 'csv'

email_list = CSV.read("Equity Members 6-25-2015.csv")

format_list = " "

email_list.each do |row|
  format_list = format_list + "\, \"" + "#{row[0]}" + "\"" + "<" + "#{row[4]}" + ">"
end

puts format_list
