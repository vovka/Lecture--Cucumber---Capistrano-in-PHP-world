# encoding: utf-8
=begin
Допустим /^задано первое число (\d+)$/ do |arg1|
  #@first_number = arg1.to_i
end

Допустим /^задано второе число (\d+)$/ do |arg1|
  #@second_number = arg1.to_i
end

Если /^мы попытаемся сложить два этих числа$/ do
  #@summ = @first_number * @second_number if !@first_number.nil? and !@second_number.nil?
end

То /^должны получить (\d+)$/ do |arg1|
  #@summ.should_not be_nil and @summ.should == arg1.to_i
end
=end

