require './main_class'

ar = []
ar << ->(x) { x + Math.cos(x) }
ar << ->(x) { Math.tan(x + 1) / (x + 1) }
y = Trap.new
ar.each_index do |i|
  puts
  puts 'Введите значения a и b для интеграла:'
  print 'a = '
  a = gets.to_f
  print 'b = '
  b = gets.to_f
  if i == 0
    puts 'Для функции x + cos(x):'
  else
    puts 'Для функции tg(x + 1) / (x + 1):'
  end
  puts "Интеграл = #{y.calc(a, b, ar[i])} c точностью #{y.eps}"
end
