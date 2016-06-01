p = Proc.new do |x|
if x.class == Fixnum || x.class == Float
  puts x + 1
else
  puts x + '1'
end
end
